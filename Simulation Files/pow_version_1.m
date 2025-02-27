clear; clc; 
model_name = 'pow_version_1_sim.slx';

[user,sys] = memory;%place in the begging of your program
tic

% define5 time axis
T = 24; % period [h]
N = 100; % number of intervals per cycle
dt = T/N; % size of time interval [h]
t = linspace(0,T,N+1); % time vector [h]

% create a load function
pL_time48 = linspace(0,48,9);
pL_values48 = [2,4,7,12,2,4,7,12,2];
t48 = linspace(0,48,2*N+1);
pL48  = interp1(pL_time48, pL_values48, t48, "cubic");
t1 = 12;
t2 = 36;
ind = find((t48 >= t1) & (t48 <= t2));
pl = pL48(ind);

% problem parameters
alpha = 1; % parameter of the function xi
Pbar = 20; % maximum power consumption of the machine
cm = 50; % revenue from the machine operation
% the cost of power generation: cg(z) = g*z^2 
% the cost of ramping: cd(z) = d*z^2
g = 1;
d = 1;

% simulation parameters
sim_step = dt/1000; % simulation step time
rel_tol = 1e-6; % simulation relative tolerance
%x0 = cm/(2*g); % x initial condition
x0=24.9999668321372;
lambda0 = 0; % lambda initial condition

pl_data.time=t';
pl_data.signals.values = pl';

% run simulation
open_system(model_name);
out = sim(model_name); % most basic way to simulate with command script.
fprintf('simulation done.');

toc

[user2,sys2] = memory;%place in the end of your program
memory_used_in_bytes=user2.MemAvailableAllArrays-user.MemAvailableAllArrays;

% process simulation results
ts = out.ts;
x_star = out.x_star;
lambda_star = out.lambda_star;
pm_star = out.pm_star;
pg_star = x_star;

figure(1);
subplot(4,1,1);
plot(ts, x_star, 'b-');
xlim([0,T]);
ylabel('x');


subplot(4,1,2);
plot(ts, lambda_star, 'r-');
xlim([0,T]);
ylabel('lambda');


subplot(4,1,3);
plot(t, pl, 'b-');
xlim([0,T]);
ylabel('pl');

subplot(4,1,4);
plot(ts, pm_star, 'b-');
hold on;
plot(ts, Pbar*(ts.^0), 'k--');
plot(ts, 0*(ts.^0), 'k--');
xlim([0,T]);
ylim([-0.1*Pbar, 1.1*Pbar]);
ylabel('pm');


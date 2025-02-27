# Bitcoin Mining-Based Demand Response Simulations
This repository contains simulation data and analysis for Bitcoin mining machines as demand-response assets in power systems for mitigating transient effects.

\section{Overview}
This repository contains data and analysis from simulations that assess the viability of Bitcoin mining machines (BMMs) as demand-response (DR) assets. The simulations examine their effect on ramping costs, electricity prices, and profitability, considering real-world grid conditions. 

The repository is based on the analysis presented in Section V of our study, which explores the impact of varying renewable energy penetration on grid economics and transient stability. The core optimization framework utilizes Pontryagin’s Minimum Principle to derive optimal mining schedules.

\section{Data and Assumptions}
The simulations rely on:
\begin{itemize}
    \item Real-world grid operation data from the \href{https://www.noga-iso.co.il/systemoperationunit/demand-curve/}{Noga grid operator}.
    \item Renewable energy and pricing data from California ISO (1970-2022).
    \item Bitcoin mining machine specifications sourced from industry reports.
    \item A cost-benefit analysis comparing mining-based DR to conventional approaches.
\end{itemize}

\section{Simulation Details}
The simulation examines:
\begin{itemize}
    \item The effect of renewable energy share on electricity prices and ramping costs.
    \item The influence of mining machine parameters (price, power consumption, hashrate) on profitability.
    \item The feasibility of using BMMs as an alternative to curtailment or energy storage.
\end{itemize}

\section{How to Use the Repository}
\begin{itemize}
    \item This repository **does not** contain executable scripts. All operations are **manual**.
    \item The provided data files contain processed results from the study.
    \item Mathematical models and sensitivity analysis are documented in the supplementary materials.
    \item Users can adapt the provided data for further analysis or implementation.
\end{itemize}

\section{Key Findings}
\begin{itemize}
    \item Bitcoin mining can mitigate ramping costs but is highly sensitive to electricity prices and machine costs.
    \item There is a trade-off between rising electricity costs due to renewables and increased ramping costs.
    \item The economic feasibility depends on machine prices staying below a threshold determined by revenue predictions.
\end{itemize}

\section{References}
For full details on the study, refer to our published paper or related research at:
\begin{itemize}
    \item \href{https://www.eia.gov/todayinenergy/detail.php?id=56880}{California ISO Energy Data}
    \item \href{https://www.noga-iso.co.il/systemoperationunit/demand-curve/}{Noga Grid Operator Data}
    \item \href{https://www.coindesk.com/}{Bitcoin Mining Industry Reports}
\end{itemize}


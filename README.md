# Bitcoin Mining-Based Demand Response Simulations

<p align="center">
  <img width="300" src="">
</p>

## Overview
This repository contains data and analysis from simulations evaluating Bitcoin mining machines (BMMs) as demand-response (DR) assets for mitigating transient effects. The study examines their impact on **ramping costs, electricity prices, and renewable energy integration**, using real-world grid data. 

The analysis is based on **Pontryagin’s Minimum Principle** to derive optimal mining schedules under different grid conditions. These simulations provide insights into the **economic viability and technical feasibility** of Bitcoin mining as a grid-balancing mechanism.

## Data and Assumptions
The simulations utilize:
- **Grid operation data** from the [Noga grid operator](https://www.noga-iso.co.il/systemoperationunit/demand-curve/).
- **Renewable energy and pricing data** from [California ISO](https://www.eia.gov/todayinenergy/detail.php?id=56880) (1970-2022).
- **Bitcoin mining machine specifications** from industry reports ([CoinDesk](https://www.coindesk.com/)).

## Simulation Details
The study models:
- The effect of **renewable energy penetration** on electricity prices and ramping costs.
- The influence of **Bitcoin mining machine parameters** (price, power consumption, hashrate) on profitability.
- The feasibility of using **BMMs as an alternative to curtailment or energy storage**.

## How to Use the Repository
- **No executable scripts** are included. The simulations are **manual**.
- Data files contain **raw results** taken from the sources mentioned above.
- Mathematical models and sensitivity analysis are **documented in the research paper**.
- Users can adapt the provided data for further analysis or implementation.

## Key Findings
- **Bitcoin mining can reduce ramping costs** but is highly sensitive to electricity prices and machine costs.
- There is a **trade-off between rising electricity costs due to renewables and increased ramping costs**.
- The **economic feasibility** is influenced by mining hardware prices staying below a profitability threshold.

## References
For full details on the data, refer to:
- [California ISO Energy Data](https://www.eia.gov/todayinenergy/detail.php?id=56880)
- [Noga Grid Operator Data](https://www.noga-iso.co.il/systemoperationunit/demand-curve/)
- [Bitcoin Mining Industry Reports](https://www.coindesk.com/)

---

📌 **Note:** This repository provides **data and analysis only**; it does not include simulation scripts. The study's findings can be used for further research on **demand-response strategies, power system economics, and energy market optimization**.


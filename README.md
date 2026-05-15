# 2016_ICM_Problem_F
Modeling Refugee Immigration Policies
Course: Math 402W Spring2017, Simon Fraser University
Team Members: Ruijie Jiang, Stuart Siu, Dennis Yin

## Overview
This repository contains the data, mathematical models, and analysis for our submission to the 2016 Interdisciplinary Contest in Modeling (ICM) for Problem F. The project focuses on developing an optimal network flow model to minimize the movement costs of refugees traveling from source countries into European safe-haven countries, subject to specific national capacities.  

## Authors
Ruijie Jiang   Stuart Siu   Dennis Yin   

## Project Methodology
The core of this project is a minimum flow problem that simulates the migration of refugees over a monthly interval.  

- Objective: The model minimizes the total cost paid by all moving refugees across all travel routes.  
- Cost Metric: Route costs are primarily determined by the geographic distance of the shortest path between adjacent countries.  
- Quotas: Each receiving country is assigned a maximum capacity based on its population, domestic GDP, and the total GDP of the European Union.  
- Flow Conservation: The model accounts for the continuous flow of refugees entering and leaving transit countries, ensuring no country exceeds its assigned quota.  
- Source Rates: The outflow from source countries (e.g., Turkey, Libya, Serbia) is constrained to a constant monthly rate based on historical 2015 data.  

## Lanugages/Software Used
- AMPL: The optimization model and network parameters are written in the AMPL programming language.  
- CPLEX: The integer programming problem is solved using the CPLEX solver.  

## Key Findings
The model's simulation indicates that refugees organically fill the closest safe-haven countries first before moving to more distant nations once local quotas are reached. This highlights potential bottleneck countries, such as Hungary, which experience massive transit flows that could lead to secondary crises involving public hygiene and shelter conditions.

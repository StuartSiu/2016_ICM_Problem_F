set S;		# sources
set A;     # countries receiving refugees

param X_prev {A} >= 0;         
param entering {S} >= 0;        
param cost {A union S, A union S} >= 0; 
param quota {A} >= 0;

var X {i in A} integer >= 0;      
var E {i in A union S, j in A union S} integer >= 0; 

minimize Total_Cost:
   sum {i in A union S, j in A union S} cost[i,j] * E[i,j]; 

subject to Conservation {i in A}:
   X[i] - sum {j in A union S} E[j,i] + sum {j in A union S} E[i,j] = X_prev[i];

subject to Sources {s in S}:  
	sum {j in A} (E[s,j]) = entering[s];

subject to Quotaing {i in A} :
	X[i] <= quota[i];
	
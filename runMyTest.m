save_system("Mdl_Sample");
simOut = sim("Mdl_Sample");
xlswrite("OutputData.xlsx",simOut.ScopeData);
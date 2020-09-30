%save_system("Mdl_Sample");
simOut = sim("Mdl_Sample");
xlsHeader = {'time','InputData','OutputData'};
xlsData = num2cell(simOut.ScopeData);
dataSet = vertcat(xlsHeader,xlsData);
xlswrite("OutputData.xlsx",dataSet);
winopen("OutputData.xlsx");
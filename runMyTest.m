% RCP単体テストの自動化スクリプト         %
% 作成者:網本　亮  作成日:2020/9/30      %

simOut = sim("Mdl_Sample");     % モデルのシミュレーション実行

% モデルの入出力データを作成
xlsHeader = {'time','InputData','OutputData'};
xlsData = num2cell(simOut.ScopeData);
dataSet = vertcat(xlsHeader,xlsData);

% モデルの期待値データを作成
eptVal = num2cell(xlsread("TestData.xlsx","期待値計算",'C:C'));
eptHead = {'EptData'};
eptData = vertcat(eptHead,eptVal);

% モデルのテスト結果ファイルを作成
TestData = horzcat(dataSet,eptData);
xlswrite("TestData.xlsx",TestData,"データ");
winopen("TestData.xlsx");
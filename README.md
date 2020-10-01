# SampleRCP_Jenkins
JenkinsにおいてRCPテストを自動化

以下はその順序
1:GitでMATLABプロジェクトをローカル、GitHubをリモートに設定する
2:MATLAB(ローカルレポジトリ)でRCPモデル及び単体テスト用スクリプトを作成・修正
3:Gitでコミット（修正を確定）
4:GitHub(リモートレポジトリ)へプッシュ（修正を反映）
5:Jenkinsでビルドし、テスト結果ファイルを作成する。
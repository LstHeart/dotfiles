##########################################################
# 初始化安装以下3个模块，之后可以不用导入到脚本中
# Import-Module oh-my-posh
# Import-Module PSReadLine
# Import-Module Get-ChildItemColor
##########################################################

# 导入模块
Import-Module $env:SCOOP\modules\scoop-completion
Set-PoshPrompt -Theme slim # 设置主题
# Set-PoshPrompt -Theme Paradox # 设置主题

# 设置自动补全
Set-PSReadLineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
# 设置命令别号，输出彩色文件名
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

# powershell脚本绝对路径
# $myscript="D:\Scripts\PowerShell\MyScripts.ps1"
Import-Module $env:myscript\PowerShell\MyScripts.ps1

# 避免冲突
Remove-Alias -Name ni -Force
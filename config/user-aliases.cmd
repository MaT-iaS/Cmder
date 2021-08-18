;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

banbifui= cd "C:\Sources\Infocorp\PE_BIF_ICHB\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"
ts = (Gulp ts) && (Gulp extensions)
cuscatlan=cd c:\Sources\Infocorp\SV_Cuscatlan_ICBv5\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI  

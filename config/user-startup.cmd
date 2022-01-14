:: use this file to run your own startup commands 
:: use @ in front of the command to prevent printing the command
 
:: @call "C:\cmder\vendor\git-for-windows/cmd/start-ssh-agent.cmd
:: @set PATH=%CMDER_ROOT%\vendor\whatever;%PATH%

:: Change the prompt style
:: Mmm tasty lamb
@prompt $E[37;44m$P$S{git}$_$E[34;40m{lamb}$S$E[0m

:: Set home path
@cd /d "C:\"

:: Add aliases
@doskey /macrofile="%CMDER_ROOT%\config\user-aliases.cmd"

@call alias /reload > nul
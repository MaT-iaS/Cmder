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

native = cd ".\1_PresentationLayer\UserInterfaceNative"
ui = cd ".\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"

icui= cd "C:\Sources\Infocorp\ICBanking\ICBanking\1_PresentationLayer\UserInterface\Infocorp.Framework.UI"
icrun= npm run serve:dev
icrunall = npm i && npm run tailored:update && npm run serve:dev

banbifui= cd "C:\Sources\Infocorp\PE_BIF_ICHB\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"
ts = (Gulp ts) && (Gulp extensions)
copyts = (Gulp copyMetadataFromResources) && (Gulp ts) && (Gulp extensions)
icbuild = gulp libs && Gulp copyMetadataFromResources && Gulp sass && Gulp ts && Gulp extensions

rbankui = cd C:\Sources\Infocorp\TT_RepublicBank_ICB\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI
cuscatlan = cd "C:\Sources\Infocorp\SV_Cuscatlan_ICBv5\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"

ficoui = cd "C:\Sources\Infocorp\HN_FICOHSA_ICB\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"
ficorunall = npm i && npm run tailored:update && npm run 1
ficorun = npm run 1

apk = grunt build --web --release --tailored --nofindsyntaxerrors --android --campaigns=true
chrome-insecure = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --auto-open-devtools-for-tabs --disable-web-security --user-data-dir="C:\Chrome"
bifnative = cd C:\Sources\Infocorp\PE_BIF_ICB_SEA\Tailored\1_PresentationLayer\UserInterfaceNative
bifui = cd C:\Sources\Infocorp\PE_BIF_ICB_SEA\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI

ttui = cd "C:\Sources\Infocorp\RBL_Trinidad\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"


lafiseui = cd "C:\Sources\Infocorp\NI_Lafise_ICHB\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"
lafiseNative = cd "C:\Sources\Infocorp\NI_Lafise_ICHB\Tailored\1_PresentationLayer\UserInterfaceNative"


cajaUI = cd "C:\Sources\Infocorp\PA_CajaAhorros_Apps\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"
cajaNative = cd "C:\Sources\Infocorp\PA_CajaAhorros_Apps\Tailored\1_PresentationLayer\UserInterfaceNative"


multiUI = cd "C:\Sources\Infocorp\PA_Multibank_ICB\Tailored\1_PresentationLayer\UserInterface\Tailored.ICBanking.UI"
multiNative = cd "C:\Sources\Infocorp\PA_Multibank_ICB\Tailored\1_PresentationLayer\UserInterfaceNative"

rmnode =  rm -rf node_modules && rm package-lock.json && npm cache verify && npm install

migration = dotnet ef migrations add $1 -s Openix.ARH.Infrastructure.WebApi\ -p Openix.ARH.Infrastructure -o Persistence\Migrations -c ApplicationDbContext

migration_identity = dotnet ef migrations add $1 -s Openix.ARH.Infrastructure.WebApi\ -p Openix.ARH.Infrastructure -o Identity\Migrations -c IdentityUsersDbContext

arh = cd "C:\Sources\Openix\Openix_ARH\Openix_ARH"

databaseupdate = dotnet ef database update -s Openix.ARH.Infrastructure.WebApi\ -p Openix.ARH.Infrastructure -c $1

dropdatabase = dotnet ef database drop -s Openix.ARH.Infrastructure.WebApi\ -p Openix.ARH.Infrastructurearhapp=cd "C:\Sources\Openix\Openix_ARH\Openix_ARH_App"  
arhapp=cd "C:\Sources\Openix\Openix_ARH\Openix_ARH_App"  

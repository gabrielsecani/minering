@echo on
@choice /m " fazer docker build ?" /c SN
IF %ERRORLEVEL% EQU 1 docker build --compress -t gabrielltr/xmr:%1 %1

@choice /m " Remover container 'xmr'?" /c SN
IF %ERRORLEVEL% EQU 1 docker rm xmr%1

@choice /m " Criar container 'xmr'?" /c SN
IF %ERRORLEVEL% EQU 1 docker run -ti --rm --name xmr%1 gabrielltr/xmr:%1

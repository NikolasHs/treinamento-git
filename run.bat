@REM @author: Nikolas santos
@REM @since: 26/01/2021
@REM @gitHub: NikolasHs

@echo off
cls

@REM Artizinha pra dar um tcham
echo            ,ggg,                                                                                                     
echo           dP""8I                I8                                               I8                                  
echo          dP   88                I8                                               I8                                  
echo         dP    88             88888888                                         88888888 gg                            
echo        ,8'    88                I8                                               I8    ""                            
echo        d88888888   gg      gg   I8     ,ggggg,    ,ggg,,ggg,,ggg,     ,gggg,gg   I8    gg     ,ggggg,    ,ggg,,ggg,  
echo  __   ,8"     88   I8      8I   I8    dP"  "Y8ggg,8" "8P" "8P" "8,   dP"  "Y8I   I8    88    dP"  "Y8ggg,8" "8P" "8, 
echo dP"  ,8P      Y8   I8,    ,8I  ,I8,  i8'    ,8I  I8   8I   8I   8I  i8'    ,8I  ,I8,   88   i8'    ,8I  I8   8I   8I 
echo Yb,_,dP       `8b,,d8b,  ,d8b,,d88b,,d8,   ,d8' ,dP   8I   8I   Yb,,d8,   ,d8b,,d88b,_,88,_,d8,   ,d8' ,dP   8I   Yb,
echo  "Y8P"         `Y88P'"Y88P"`Y88P""Y8P"Y8888P"   8P'   8I   8I   `Y8P"Y8888P"`Y88P""Y88P""Y8P"Y8888P"   8P'   8I   `Y8
echo.
echo.
echo  .88888.    .d888888  
echo d8'   `8b  d8'    88  
echo 88     88  88aaaaa88a 
echo 88  db 88  88     88  
echo Y8.  Y88P  88     88  
echo `8888PY8b  88     88  


@REM Pasta onde os arquivos serão salvos
set outputDir=.\Results

@REM Executar testes especificos
@REM robot  -d ./MeusResultados -t "Cenário 01: Pesquisar postagem Season Premiere" Testes

@REM Comando que executara os testes com o parametro de saida dos arquivos
robot -d %outputDir% Tests

@echo off
echo Desativando Efeitos Visuais...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

echo Desativando Serviços Desnecessários...
sc config "NomeDoServiço" start= disabled
REM Repita o comando acima para cada serviço que deseja desativar

echo Executando Desfragmentação do Disco...
defrag C: /O

echo Limpando Arquivos Temporários...
cleanmgr /sagerun:1

echo Atualizando Drivers...
REM Certifique-se de obter os drivers mais recentes para o seu hardware

echo Ajustando Configurações de Energia...
powercfg /s SCHEME_CURRENT_SUB_SLEEP /f
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0

echo Desativando Inicialização Rápida...
powercfg /h off

echo Ajustando Configurações do Sistema...
msconfig
REM Na interface gráfica, ajuste as configurações de inicialização e serviços conforme necessário

echo Verificando Atualizações do Sistema...
REM Certifique-se de ter as últimas atualizações do Windows instaladas

echo Otimização concluída. Reinicie o sistema para aplicar as alterações.
pause

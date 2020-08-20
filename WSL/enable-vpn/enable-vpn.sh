read -p 'Você está conectado na VPN atraves do Cysco Anyconnect? Digite "sim" para ativar a vpn no WSL. Qualquer outra resposta será considerada como "não": ' proxy_indicator
if [ "$proxy_indicator" = "sim" ]; then
   /mnt/c/Windows/System32/cmd.exe /c start "c:\enable-vpn.ps1.lnk"
   #/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe Start-Proccess -FilePath Start-Process "C:\enable-vpn.ps1.lnk"
   cp /etc/resolv.conf.vpn /etc/resolv.conf
   echo 'Ativado o suporte de proxy no WSL'
fi

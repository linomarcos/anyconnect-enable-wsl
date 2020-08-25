
# Configurando ambiente para permitir o uso do WSL 2 na VPN utilizando Anyconnect

Este repositório foi criado para salvar instruções referentes a um facilitador de configuração de VPN para o WSL utilizando a vpn através do Cysco Anyconnect.

## Pré-requisitos

Antes de iniciar o processo de configuração para usar os scripts, você deve ter instalado na sua máquina o Windows 10 atualizado para versão 2004, Build 19041 ou superior.

Para realizar a instalação siga as instruções no site da microsoft:
https://docs.microsoft.com/pt-br/windows/wsl/install-win10

Para funcionar será necessário seguir os procedimentos abaixo tanto no ambiente windows quanto no WSL.

Você terá também que liberar execução de scripts no power shell e para isso precisará de acesso de administrador.

## Configurando ambiente WINDOWS

Copie a pasta enable-vpn no diretório windows deste repositório para o diretório raíz c:\

Ainda no windows abra um powershell como administrador e execute o seguinte comando:
```
Set-ExecutionPolicy Unrestricted
```

E seleciona a opção [A] para aplicar a política para todos os scripts.

Futuramente farei uma versão com o procedumento de assinar o script para não ter que abrir a politica de execução completamente.

## Configurando ambiente WSL
Copie a pasta enable-vpn no diretório WSL para o seu diretório home, ficando no endereço ~/enable-vpn.

Abra seu arquivo bashrc para edição
```
nano ~/.bashrc
```

adicione a linha abaixo no final do arquivo bashrc:
```
sudo ~/enable-vpn.sh
```

Salve o arquivo.

## Como funciona?

Agora sempre que entrar no seu ambiente WSL você será perguntado se está conectado na VPN. Responda "sim" somente se estiver já conectado na VPN pelo windows, desta forma os comandos serão executados e a VPN estará funcionando também no ubuntu.

Responda não e nenhum comando será executado e o WSL só terá conexão se não estiver com a VPN ativa.

Espero que estas orientações sejam úteis! :)
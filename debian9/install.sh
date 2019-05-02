#!/bin/bash

# Passo a passo para utilizar este script.
# 1. Abra o terminal linux através do atalho: Crt+T
# 2. No terminal, execute o comando: $ sudo su
# 3. Copie esse arquivo para a pasta de sua preferência; ex.: $ cp instalacao_dev.sh /home/seu_usuario/
# 4. Acesse a pasta onde está o arquivo instalacao_dev.sh; ex.: $ cd /home/seu_usuario/
# 5. Execute o comando: $ chmod +x instalacao_dev.sh
# 5. Execute o script através do comando: sudo bash instalacao_dev.sh


usage="$(basename "$0") [-h] [-k] [-s n] -- script for basic installation of It Happens development environment.

where:
    -h  show this help text
    -k  create key ssh
    -s  set the seed value (default: 42)"

seed=42
export sshParam=0

while getopts ':hks:' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    k) echo "O script irá criar automaticamente sua chave ssh"
        sshParam=1
       ;;
    s) seed=$OPTARG
       ;;
    :) printf "missing argument for -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
   \?) printf "illegal option: -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done
shift $((OPTIND - 1))

sudo unlink /etc/localtime

sudo ln -s /usr/share/zoneinfo/America/Fortaleza /etc/localtime

printf "\n\rINICIANDO SCRIPT DE INSTALAÇÃO PARA DESENVOLVEDORES DA IT HAPPENS - GRUPO MATEUS ... \n\r"


if ! sudo apt-get install htop -y
then
    printf "Não foi possível instalar o terminal htop\n\r"
    exit 1
fi
printf "Instalação do git htop...\n\r"


printf "\n\rSCRIPT FINALIZADO ... \n\r"

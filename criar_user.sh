#!/bin/bash


useradd guset10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd -e 

useradd guset10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd -e 

useradd guset10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd -e

useradd guset10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd -e

echo "Finalizado"


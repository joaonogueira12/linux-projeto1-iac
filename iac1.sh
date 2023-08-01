#!/bin/bash

echo "Criando diretorios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios.."

groupadd GRP_ADM
groudadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios.."

useradd renato -m -s  /bin/bash -p $(openssl passwd -crypt senha010611) -g GRP_ADM
useradd augusto -m -s /bin/bash -p $(openssl passwd -crypt senha221288) -g GRP_VEN
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt senha1234) -g GRP_SEC

echo "Permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissao"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."



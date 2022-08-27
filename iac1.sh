#!/bin/bash

echo "Criando Diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios..."

useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -5 senha123) carlos
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -5 senha123) maria
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -5 senha123) joao

useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -5 senha123) debora
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -5 senha123) sebastiana
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -5 senha123) roberto

useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -5 senha123) josefina
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -5 senha123) amanda
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -5 senha123) rogerio

echo "Atribuindo Permissoes..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluido!"

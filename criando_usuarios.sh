#!/bin/bash


echo "Criando estrutura de usuarios, diretórios e permissões..."

echo "Parte 1 - criando usuarios"

useradd carlos -c "Carlos Vinicios" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd maria -c "Maria Fernandez" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd joao -c "João Paulo" -s /bin/bash -m -p $(openssl passwd -6 Senha123)

useradd debora -c "Debora Rodrigues" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd sebastiana -c "Sebastiana Medeiros" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd roberto -c "Roberto Mendes" -s /bin/bash -m -p $(openssl passwd -6 Senha123)

useradd josefina -c "Josefina Tavares" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd amanda -c "Amanda Nunes" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd rogerio -c "Rogério Barcelar" -s /bin/bash -m -p $(openssl passwd -6 Senha123)

echo "Parte 2 - Criando grupos..."

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo "Parte 3 - Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Parte 4 - Colocando usuários em seus respectivos grupos..."

usermod carlos -G GRP_ADM
usermod maria -G GRP_ADM
usermod joao -G GRP_ADM

usermod debora -G GRP_VEN
usermod sebastiana -G GRP_VEN
usermod roberto -G GRP_VEN

usermod josefina -G GRP_SEC
usermod amanda -G GRP_SEC
usermod rogerio -G GRP_SEC

echo "Parte 5 - Atribuindo permissões..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /ven/


echo "Fim do script"

#!./bin/bash


echo "Criando estrutura de usuarios, diretórios e permissões..."

echo "Parte 1 - criando usuarios"

useradd carlos -c "Carlos Vinicios" -s /bin/bash -m
passwd carlos
passwd carlos -e

useradd maria -c "Maria Fernanda" -s /bin/bash -m
passwd maria
passwd maria -e

useradd joao -c "João Cavalcante" -s /bin/bash -m
passwd joao
passwd joao -e

useradd debora -c "Debora Fernandez" -s /bin/bash -m
passwd debora
passwd debora -e

useradd sebastiana -c "Sebastiana Tavares" -s /bin/bash -m
passwd sebastiana
passwd sebastiana -e

useradd roberto -c "Roberto Bittencourt" -s /bin/bash -m
passwd roberto
passwd roberto -e

useradd josefina -c "Josefina Mafalda" -s /bin/bash -m
passwd josefina
passwd josefina -e

useradd amanda -c "Amanda Rodrigues" -s /bin/bash -m
passwd amanda
passwd amanda -e

useradd rogerio -c "Rogério Henricasso" -s /bin/bash -m
passwd rogerio
passwd rogerio -e

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

chmod 777 /publico
chown :GRP_ADM /adm/
chown :GRP_VEN /ven/
chown :GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /ven/

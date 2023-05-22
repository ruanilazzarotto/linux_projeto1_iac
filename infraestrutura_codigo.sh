#!/bin/bash

#!/bin/bash

#remove diretorios
# rm -Rf /publico/
# rm -Rf /adm/
# rm -Rf /ven/
# rm -Rf /sec/

#remove usuarios
# userdel -r carlos
# userdel -r maria
# userdel -r joao
# userdel -r debora
# userdel -r sebastiana
# userdel -r roberto
# userdel -r josefina
# userdel -r amanda
# userdel -r rogerio

#remove grupos
# groupdel GRP_ADM
# groupdel GRP_VEN
# groupdel GRP_SEC

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypto Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
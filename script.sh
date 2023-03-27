#!/bin/bash

echo "Criando um script para usuarios em linux"

echo "Criando os diretorios"

mkdir /codigo/publico
mkdir /codigo/adm
mkdir /codigo/ven
mkdir /codigo/sec

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios"

useradd carlos -c "Carlos adm" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria adm" -m -s /bin/bash -G GRP_ADM
useradd joao -c "João adm" -m -s /bin/bash -G GRP_ADM
useradd debora -c "Débora vendas" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana vendas" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto vendas" -m -s /bin/bash -G GRP_VEN
useradd josefina -c "Josefina secretaria" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda secretaria" -m -s /bin/bash -G GRP_SEC 
useradd rogerio -c "Rogério secretaria" -m -s /bin/bash -G GRP_SEC

echo "Definindo root como dono"

chown root:GRP_ADM /codigo/adm
chown root:GRP_VEN /codigo/ven
chown root:GRP_SEC /codigo/sec

chmod 770 /codigo/adm
chmod 770 /codigo/ven
chmod 770 /codigo/sec
chmod 777 /codigo/publico

chmod 770 GRP_ADM
chmod 770 GRP_VEN
chmod 770 GRP_SEC

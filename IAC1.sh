#!/bin/bash

echo "Creating diretories..."

mkdir /public
mkdir /adm
mkdir /sales
mkdir /sec

echo "Creating groups of users"

groupadd GRP_ADM
groupadd GRP_SALES
groupadd GRP_SEC

echo "Creating users"

useradd carlos -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd  Password123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd  Password123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_SALES
useradd roberto -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_SALES
useradd rogerio -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_SALES

useradd josefina -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_SEC
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Password123) -G GRP_SEC

echo "Especify user permissions ..."

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sales
chmod 770 /sec
chmod 777 /public

echo "End..."


#!/bin/bash
echo "01-Criando diretorios!"
mkdir /home/ariadnef/publico 
mkdir /home/ariadnef/adm
mkdir /home/ariadnef/ven 
mkdir /home/ariadnef/sec

echo "Diretorios criados com sucesso!"

echo "*************************"
echo "02-Criando os grupos"
echo "*************************"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso"

echo "*************************"
echo "03-Criando usuarios "
echo "*************************"

useradd carlos -c  "Carlos" -s /bin/bash -m  -p $(openssl passwd -crypt senha123)
useradd maria  -c  "Maria " -s /bin/bash -m  -p $(openssl passwd -crypt senha123)
useradd joao   -c  "Joao"   -s /bin/bash -m  -p $(openssl passwd -crypt senha123)

useradd debora     -c  "Debora"  -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd roberto    -c "Roberto"  -s /bin/bash -m -p $(openssl passwd -crypt senha123)

useradd josefina   -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd amanda     -c "Amanda"  -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd rogerio    -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
echo "usuarios criados com sucesso"

echo "********************************"
echo "04- Adicionar usuarios a grupos"
echo "********************************"
usermod -G GRP_ADM carlos 
usermod -G GRP_ADM maria  
usermod -G GRP_ADM joao 
usermod -G GRP_VEN debora 
usermod -G GRP_VEN sebastiana 
usermod -G GRP_VEN roberto 
usermod -G GRP_SEC josefina 
usermod -G GRP-SEC amanda 
usermod -G GRP-SEC rogerio 
echo "Usuarios adicionados com sucesso!"

echo "**************************************"
echo "05- Conceder permissoões a diretorios"
echo "**************************************"
chown root GRP_ADM /adm
chown root GRP_VEN /ven
chown root GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publica

echo "Fim script"








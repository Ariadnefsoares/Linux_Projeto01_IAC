#!/bin/bash
#CALCULA O IMC 
clear
#declaração de variaveis 
declare NOME
declare ALTURA
declare -i PESO
declare IMC

echo -n "Qual e o seu nome : "
read NOME

echo -n "Qual e a sua altura:"
read ALTURA

echo -n "Qual e o seu peso :"
read PESO


IMC=$(echo "scale=2.0 ; $PESO / ($ALTURA ^ 2)" | bc)
echo "*********Resultado dos testes*********"
echo "$NOME seu IMC é: $IMC"

if [ "$IMC" -le 17 ]
then 
      echo "Muito abaixo do peso!"	

elif [ "$IMC" -ge 18 -a "$IMC" -le 25 ]; 
then
      echo "Peso normal! "

elif [ "$IMC" -ge 25 -a "$IMC" -le 30 ];
then
      echo "Acima do peso!"

elif [ "$IMC" -ge 30 -a "$IMC" -le 35 ]; 
then
	echo "Obesidade"

elif [ "$IMC" -ge 35 -a "$IMC" -le 40 ]; 
then
         echo "Obesidade severa"

elif [ "$IMC" -gt 40 ]; 
then
        echo "Obesidade Morbida"
fi
echo "****************************"
exit 0   


 


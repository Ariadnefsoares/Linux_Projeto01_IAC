#!/bin/bash
#Tabuada de multiplicação
# Fazer tabuada de soma
# fazer tabuada de divisão
# fazer tabuada de subtração

declare MULTIPLICADOR=1
declare MULTIPLICANDO=1
declare PRODUTO
declare NUM1
declare NUM2
declare RES01
declare OP

#Criar uma estrutura de decisão aqui para que o usuario possa escolher qual tabuada ele quer ver ,usar o case para ele decidir
echo
echo "************@@@TABUADA@@@**********"
echo "1 - MULTIPLICAR"
echo "2 - SOMAR "
echo "3 - SUBTRAIR "
echo "4 - DIVIDIR "
echo
sleep 3
echo "Escolha a opcao :"
read OP
echo 


if [ "$OP" = "1" ];
then

echo  "Você escolheu a tabuada de Multiplicação"
sleep 5
echo

while [ "$MULTIPLICADOR" -le 10 ]
do
	while [ "$MULTIPLICANDO" -le 10 ]
	do
		PRODUTO=$((MULTIPLICADOR * MULTIPLICANDO))
		printf  "%s x %s = %s\n" "$MULTIPLICADOR" "$MULTIPLICANDO" "$PRODUTO"

		MULTIPLICANDO=$((MULTIPLICANDO + 1))
	done
	printf "\n"
	MULTIPLICANDO=1

	MULTIPLICADOR=$((MULTIPLICADOR + 1))
done 
fi

if [ "$OP" = "2" ];
then
echo "Vocêescolheu a Soma "
sleep 5

while [ "$NUM1" -le 10 ]
do
	while [ "$NUM2" -le 10 ]
	do 
	       RES01=$((NUM1+NUM2))
               printf "%s + %s = %s\n" "$NUM1" "$NUM2" "$RES01"	
	       NUM2=$((NUM2 + 1 )) 
	done
        printf "\n"
        NUM2=1
        
        NUM1=$((NUM1 + 1 ))
done
fi











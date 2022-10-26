#!/bin/bash
echo "Bem vindo ao nosso consutorio!"
echo
echo
echo
echo "Em qual turno deseja se consultar: "
echo "1 - Turno da manha."
echo "2 - Turno da tarde."
echo "3 - Turno da noite."
read turno

sleep 3

if [ "$turno" = "1" ]
then
        echo "Dr. Carlos calvanti atende no turno da manha."
        echo "Sua consulta no turno da manha esta marcada."
fi	

if [ "$turno" = "2" ] 
then
	echo "Dra.Adriana Resende atende no turno da tarde."
	echo "Sua consulta no turno da tarde esta marcada."
fi

if [ "$turno" = "3" ]
then
	echo "Dr. Antonio Moura atende no turno da noite."
	echo "Sua consulta esta marcada."
fi

sleep 4

exit 0






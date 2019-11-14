#!/bin/bash
#set: fileformat=unix
import ./pesquisa_de_ip.sh

interface1(){
	mkdir /scripts/nova_$data
	cp /scripts/teste.sh /scripts/nova_$data
	echo "FEITO" 
}

clear
echo "Selecione a Opção que deseja: "
echo "1 - EM DESENVOLVIMENTO"
echo "2 - EM DESENVOLVIMENTO"
echo "3 - EM DESENVOLVIMENTO"
echo "4 - EM DESENVOLVIMENTO"
echo "5 - PESQUISA NOME DA MAQUINA: "
echo -n "--> "
read op
clear
case $op in
	1)
		interface1
		;;
	2)
		source pesquisa.sh
		;;
	5)
		pesquisa_de_ip
		;;
esac


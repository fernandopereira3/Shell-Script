#!/bin/bash
menu(){

echo "Controle do servidor"
echo "1 - Pesquisa de Nomes "
echo "2 - Teste dos funções "
echo -n "Digite a opcao desejada: " 
read op
clear 
case "$op" in
    1) pesquisa ;;
    2) echos ;;
    3)echo "Não esta pronto.";;
    4)echo "Não esta pronto.";;
	*)'Opcao desconhecida.';echo;menu;;
esac
}menu 

function echos(){
clear
echo teste das funcoes !!!!
} 


function pesquisa(){
echo -n 'Digite o prefixo dos IPs (padrao 180): ' 
read pre
echo 'Digite a faixa de IPs a ser pequisados (padrao 1 a 255): '
echo -n 'Inico: '
read ini
echo -n 'Fim: '
read fim
echo -n 'De um nome ao aquivo onde os IPs serao salvos: '
read arquivo
echo 'Script sendo executado...'
 
if [pre == 180 ] 
then
for (($ini=0;$ini<$fim;$ini++))
do
echo 'executando no computador 10.14.180.'$ini
nmblookup -A 10.14.$pre.$ini >> /media/arquivos/programas/$arquivo.txt
done

else
for (($pre=0;$pre<256;pre++))
do
echo 'executando no computador 10.14.'$pre.'1'
nmblookup -A 10.14.$pre.1 >> /media/arquivos/programas/$arquivo.txt
done
fi
#################################################################
if [ini == 1 | fim == 255 ] 
then
for (($ini=0;$ini<$fim;$ini++))
do
echo 'executando no computador 10.14.180.'$ini
nmblookup -A 10.14.180.$ini >> /media/arquivos/programas/$arquivo.txt
done

else
for (($ini=0;$ini<256;$ini++))
do
echo 'executando no computador 10.14.'$pre.$ini
nmblookup -A 10.14.$pre.1 >> /media/arquivos/programas/$arquivo.txt
done
fi
}

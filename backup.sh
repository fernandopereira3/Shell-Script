#!/bin/bash
arquivos="//media/arquivos"
backup="/media/backup"
backup_local="/media/backup_local"

function_backup_arquivos(){
date >> /media/arquivos/programas/log_backup.txt
echo "ESPERE MONTANDO DIRETORIOS ENVOLVIDOS"
mount /dev/sda1 /media/backup_local
chmod -R 777 /media/backup_local/*
echo "PRONTO PARA O INICIO...."
sleep 10
# copia dos arquivos para o backup 
cp -f -R -v $arquivos/cimic $backup_local
cp -f -R -v -u $arquivos/cpd $backup_local
cp -f -R -v -u $arquivos/cras $backup_local
cp -f -R -v -u $arquivos/financas $backup_local
cp -f -R -v $arquivos/infra $backup_local
cp -f -R -v $arquivos/judiciaria $backup_local
cp -f -R -v -u $arquivos/np $backup_local
cp -f -R -v -u $arquivos/producao $backup_local
cp -f -R -v -u $arquivos/saude $backup_local
cp -f -R -v -u $arquivos/seguranca $backup_local
cp -f -R -v $arquivos/turno1 $backup_local
cp -f -R -v $arquivos/turno2 $backup_local
cp -f -R -v $arquivos/turno3 $backup_local
cp -f -R -v $arquivos/turno4 $backup_local
cp -f -R -v -u $arquivos/sindicancia $backup_local
cp -f -R -v $arquivos/publico $backup_local
cp -f -R -v -u $arquivos/rol $backup_local
cp -f -R -v $arquivos/adm $backup_local 
cp -f -R -v $arquivos/notes $backup_local
cp -f -R -v $arquivos/peculio $backup_local
chmod -R 777 $arquivos/*
chmod -R 777 $backup_local/*
rm -R /var/log/*
find /media/arquivos/ -name "~*.*" -delete
find /media/arquivos/ -name "*.db" -delete
find /media/backup_local/ -name "~*.*" -delete
find /media/backup_local/ -name "*.db" -delete
sleep 3
umount -l /dev/sda1
sleep 60
rm -rf /media/backup_local/*
date >> /media/arquivos/programas/log_backup.txt
}
function_backup_arquivos


#!/bin/bash
echo "Backup iniciado em $(date +%d"/"%b"/"%Y" as "%T)" >> /media/log/bkp_log.txt
mount -t cifs //10.14.180.4/arquivos /media/fonte -o username=root,password=141202,ro
#####
cp -v -R -f -u /media/fonte/comunicados /media/backup1/ && echo "Backup de COMUNICADOS realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/cpd /media/backup1/ && echo "Backup de CPD realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/turno1 /media/backup1/ && echo "Backup de TURNO 1 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/turno3 /media/backup1/ && echo "Backup de TURNO 3 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/turno2 /media/backup1/ && echo "Backup de TURNO 2 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/turno4 /media/backup1/ && echo "Backup de TURNO 4 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/seguranca /media/backup1/ && echo "Backup de SEGURANCA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/inclusao /media/backup1/ && echo "Backup de INCLUSAO realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/saude /media/backup1/ && echo "Backup de SAUDE realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/infra /media/backup1/ && echo "Backup de INFRA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/rol /media/backup1/ && echo "Backup de ROL realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/producao /media/backup1/ && echo "Backup de PRODUCAO realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/sindicancia /media/backup1/ && echo "Backup de SINDICANCIA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/peculio /media/backup1/ && echo "Backup de PECULIO realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/np /media/backup1/ && echo "Backup de N.PESSOAL realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/judiciaria /media/backup1/ && echo "Backup de JUDICIARIA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/financas /media/backup1/ && echo "Backup de FINANCAS realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/cras /media/backup1/ && echo "Backup de C.R.A.S realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/cimic /media/backup1/ && echo "Backup de C.I.M.I.C realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/adm /media/backup1/ && echo "Backup de ADM realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/fonte/notes /media/backup1/ && echo "Backup de NOTES realizado com sucesso" >> /media/log/bkp_log.txt

echo "Backup concluido, inicio da LIMPEZA no backup em $(date +%d"/"%b"/"%Y" as "%T)" >> /media/log/bkp_log.txt


find /media/backup1/ -name "~*.*" -delete
find /media/backup1/ -name "*.avi" -delete
find /media/backup1/ -name "*.mp4" -delete
find /media/backup1/ -name "*.mp3" -delete
find /media/backup1/ -name "*.msi" -delete  
find /media/backup1/ -name "*.exe" -delete  && echo "Arquivos desnecessario excluidos com sucesso" >> /media/log/bkp_log.txt

#####
echo -e "Backup completo e limpeza concluidos em $(date +%d"/"%b"/"%Y" as "%T)\n" >> /media/log/bkp_log.txt
umount -l //10.14.180.4/arquivos

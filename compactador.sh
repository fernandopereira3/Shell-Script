data=$(date +%d"/"%b"/"%Y)
cd /media/backup1
echo "Compactacao iniciado em  $(date +%d"/"%b"/"%Y" as "%T)" >> /media/log/bkp_log.txt
###########################################################

tar  -zcvf /media/backup2/cpd_compactado.tar.gz /media/backup1/cpd
tar  -zcvf /media/backup2/turno1_compactado.tar.gz /media/backup1/turno1
tar  -zcvf /media/backup2/turno3_compactado.tar.gz /media/backup1/turno3
tar  -zcvf /media/backup2/turno2_compactado.tar.gz /media/backup1/turno2
tar  -zcvf /media/backup2/turno4_compactado.tar.gz /media/backup1/turno4/
tar  -zcvf /media/backup2/seguranca_compactado.tar.gz /media/backup1/seguranca/
tar  -zcvf /media/backup2/inclusao_compactado.tar.gz /media/backup1/inclusao/
tar  -zcvf /media/backup2/saude_compactado.tar.gz /media/backup1/saude/
tar  -zcvf /media/backup2/infra_compactado.tar.gz /media/backup1/infra/
tar  -zcvf /media/backup2/rol_compactado.tar.gz /media/backup1/rol/
tar  -zcvf /media/backup2/producao_compactado.tar.gz /media/backup1/producao/
tar  -zcvf /media/backup2/sindicancia_compactado.tar.gz /media/backup1/sindicancia/
tar  -zcvf /media/backup2/peculio_compactado.tar.gz /media/backup1/peculio/
tar  -zcvf /media/backup2/np_compactado.tar.gz /media/backup1/np/
tar  -zcvf /media/backup2/judiciaria_compactado.tar.gz /media/backup1/judiciaria/
tar  -zcvf /media/backup2/financas_compactado.tar.gz /media/backup1/financas/
tar  -zcvf /media/backup2/cras_compactado.tar.gz /media/backup1/cras/
tar  -zcvf /media/backup2/cimic_compactado.tar.gz /media/backup1/cimic/
tar  -zcvf /media/backup2/adm_compactado.tar.gz /media/backup1/adm/
tar  -zcvf /media/backup2/notes_compactado.tar.gz /media/backup1/notes/

#tar -zcvf servidor_compactado_$data.tar.gz cpd_compactado.tar.gz turno1_compactado.tar.gz turno3_compactado.tar.gz turno2_compactado.tar.gz turno4_compactado.tar.gz

#############################################################tail -35 /media/log/bkp_log.txt

echo -e "Compactacao concluida  em $(date +%d"/"%b"/"%Y" as "%T)\n" >> /media/log/bkp_log.txt
echo "Compactacao concluida, verifique o arquivo de log em anexo para mais detalhes." | mutt -s 'LOG DE BACKUPS DO DIA'$data -a /media/log/bkp_log.txt -- fernandopereira-3@hotmail.com
cd /

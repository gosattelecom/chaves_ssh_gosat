**Clone este projeto no diretório:** `/root/bin/`

Em seguida, execute os passos abaixo.

# Adicione esse script ao crontab conforme abaixo.
`echo '#' >> /etc/crontab && echo "0 21 * * * root /root/bin/chaves_ssh_gosat/sync_ssh_keys.sh" >> /etc/crontab`

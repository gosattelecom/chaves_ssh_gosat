**Clone este projeto no diretório:** `/root/bin/`

Em seguida, execute os passos abaixo.

# Dê permissão de execução
`chmod /root/bin/chaves_ssh_gosat/sync_ssh_keys.sh`

# Adicione esse script ao crontab conforme abaixo.
`echo '#' >> /etc/crontab && echo "0 21 * * * root bash /root/bin/chaves_ssh_gosat/sync_ssh_keys.sh" >> /etc/crontab`

# Clone este projeto no diretório
`cd /root/bin/ && git clone https://github.com/gosattelecom/chaves_ssh_gosat.git`

# Dê permissão de execução
`chmod +x /root/bin/chaves_ssh_gosat/sync_ssh_keys.sh`

# Adicione esse script ao crontab conforme abaixo.
`echo '#' >> /etc/crontab && echo "0 21 * * * root bash /root/bin/chaves_ssh_gosat/sync_ssh_keys.sh" >> /etc/crontab`

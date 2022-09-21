#!/usr/bin/env bash

GIT=$(which git)
CP=$(which cp)
CD=$(which cd)
RM=$(which rm)
CHMOD=$(which chmod)
CHOWN=$(which chown)
GIT_DIR="/root/bin/chaves_ssh_gosat"
SSH_DIR="/root/.ssh"
SSH_KEYS_MANDATORY=("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDLvZxd2Wl4etZhJYr1+Xjg2leT2KYvEX81FP6S+wNQX+Bir9owx5REPtzka9Hz8H7z4BNbs50OT6qfIDauA0ku9WKWWefvfXSBX4L3BEy1FRY3W/9rrH677WknvvSiTGhpIgQ1ku0Vb0N/Aa92MbgnicGTdyF2bZVaW7P2fu2RAtC/atLf0raZfAaU1qg6mEM14lIgWU3iiuV1RgmH2vY0RfITDjrng05IGdVmRVMcdVxjnAfRKTsCDQmx5S13qCSTLabJgDlUqyI3sRGOneIlqSIEpsFnscj5y4NqiRywyLaDxaOSXoOtwwuyO5qG+rVrpfBo2arDnFDF00HClkx/ZRI6YB4hqsgNsQrpoaqwEPoSJnjqAsHyB3UI7IZPC3JC2bJNLZ/FbtgyDwTvv5z94+0FhLGE92dyqNeItYCQa8fJws5XvFrg8Y0U15HymNMmBRjviXqVf/UKhnXtVqIDHHY1HvD+T5t8DI7Sf1HmdD37bky83DWJ8Ef3SSaGVT2vDDFITbZxF8lscruQL0CjYi4WfwKvg4wGw/LTRtpHGzzXWvPgrqfLJ7cYObqGo34vXR+8CTr7vwmLKa3wPdZfC2z22SnCmQcLi09w3w51dAXoVnKtJyMzYPbu15VvcxAWvfU/vfoQTejdajuSwFqoSk+2la6kVqtiRRX73kBqRw== Faioli@Roggers-MacBook-Air-2.local" "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAfcAJ+SI/KynFpVuHUlZ0bgsYVgXzwlqjqOxgT92Zfvvk+Ge6ic07Q4zs8zbWxdI8WGmHo9wi+H3/MC/fRxfNdQdhhJIyB2Q9Hv3Kcoh4NMMz85uFCnRUg1OrLxJS+hbLGw0hWwdA3ya8urMR47/yQ3nj9WXvrMu3BtApuk8Wvb2IZQlB5+2GfmshVfAT6aAKtMTfy42lK5olbjErwu9RQO9tHK5t9wfw3b5ftzm7uMBTx+9Cj4TNbzNsJRTescgY/fTm3pGJnuvIgV2wCzccK0zoDWCDXk3m1Dnls74vvo55KGAkOyUhmzpKxJzKnJ/r/nqbD4yjkHW7l6jjtajlM/ATBZSUhYFrzLe9RwH3OtBKTeqxBSsABedWpmNRmXQY/SmhkkL8kQn8/sljBkQKxM8KLm7SpVeJKFsfKp3Gwz8gw4i7MkV3iFtwkqPCON1GJMeIiOjI0WnxAcAkfaWa9Kmj+4/QyC7NziKJkY742rqx0vcktPO0X+k38LoD7BQwlynMBOsP64trOI14kKUZlvmId6hg0OqJiCo/vETw1Bzc6Ti9oKLIBOtw9lBEuKej/RbKuLAW5XmqBRfBCOenHCQWHg4b4/m+JZOliBE4zBoDSlx/SmghAt6fVmDVOvZZXcIcixm/1xtHwlrYJqhFRFssA8ubeD2ebqrmsYrpZQ== root@phelipe-MJ" "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAu+ajih4XydV+U8wmMD1M1M8h+TbKcj9KSj0AhvU54YA3p7nsq18EZY6aE/EhZfOOl+5TEft73//s4qGffatCVZfi/qzA/saJS+ESIjJLG7cdIyPNgXTkeg48HditEubKmeIwGnrkXmcjfKArrlmfrpo6NdgyD8VLeFGIlQ57yotWnRHxJ0IAHbi/I+dnT7XrMeJH4A25MKPxlL8w2dnVUKfDq3JsEtQj6ffzCZ9pc0tbDJbFSTXRpt+keASpOL94S1fr+4YFb1O4TJqCFMYhHpTAm+ROKDd0ruqRGQWMedpT0Pmw+YQ6g2+nwapI63iNjcZhMR6o2XVQD8OOeQaFaSEBLu67dzw+VKa4+rUrYJSFw0LDnafE2rh3GnWih2cKZPBeGAIqcrIekgRAXJaLAYzoC0GeENKi/yB6hSyNDS3W3jllKdQWhpgigQ0e4dpVEXj4LhV8y3664JlkvhxO72hcAKs6edr5sdvDKaFSgAdr0dqrleMVO41tyWm4NGgEV8YTZHsDqdo6Xjcq31dM/c4e2duxRU8+hyP1A9d9/XmJkiqtQwEkGsxYLC3BU3fgw+HnkIgJKNSeBPV5DVXJ77np0FeNrdPP+6KYVsyZQv+SuAJIVWD0mKRQHgaOw3Aqnk9i/0ihdGvLVui8l0mfAhbydNpeboEruMInLuzMsqc= root@gosat.gocall.center")

if [[ ! -d ${GIT_DIR} ]]; then
    cd /root/bin/
    ${GIT} clone https://gosattelecom:github.com/gosattelecom/chaves_ssh_gosat.git
else
    ${GIT} checkout .
    cd ${GIT_DIR}
    ${GIT} pull
fi

${RM} -f ${SSH_DIR}/authorized_keys
${CP} ${GIT_DIR}/chaves_ssh_gosat.txt ${SSH_DIR}/authorized_keys
${CHMOD} 644 ${SSH_DIR}/authorized_keys
${CHOWN} root:root ${SSH_DIR}/authorized_keys

echo '' >> ${SSH_DIR}/authorized_keys
IFS=$'\n'
echo "# Chaves FailSafe" >> ${SSH_DIR}/authorized_keys
for key in ${SSH_KEYS_MANDATORY[@]}; do
    echo $key >> ${SSH_DIR}/authorized_keys
done
IFS=' '
echo '' >> ${SSH_DIR}/authorized_keys
echo "Chaves sicronizadas! :)"

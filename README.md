Cloud bastion homework
bastion_IP = 84.252.137.65
someinternalhost_IP = 10.128.0.8
Подключение к someinternalhost в одну команду из вашего рабочего устройства
ssh -A -i ~/.ssh/otus-yandex-cloud -J appuser@178.154.252.46 appuser@10.130.0.34
Подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли
добавить в ~/.ssh/config

Host otus-yc-bastion-host
User appuser
HostName 84.252.137.65
IdentityFile ~/.ssh/appuser

Host someinternalhost
User appuser
HostName 10.128.0.8
IdentityFile ~/.ssh/appuser
ProxyJump otus-yc-bastion-host


после этого выполнить

Логи с локального компа:

dmitry@dm:~$ nano ~/.ssh/config
dmitry@dm:~$ ssh someinternalhost
The authenticity of host '10.128.0.8 (<no hostip for proxy command>)' can't be established.
ECDSA key fingerprint is SHA256:A0/kI5nMG3NvprRG8+iSLFmQdHKLijJ+y/03UTnVg4w.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '10.128.0.8' (ECDSA) to the list of known hosts.
Welcome to Ubuntu 20.04.3 LTS (GNU/Linux 5.4.0-42-generic x86_64)

* Documentation:  https://help.ubuntu.com
* Management:     https://landscape.canonical.com
* Support:        https://ubuntu.com/advantage
  Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings

Last login: Wed Sep 15 23:39:49 2021 from 10.129.0.9
appuser@someinternalhost:~$ 

внешний ип
bastion_IP = 84.252.137.65

внутренний ип
bastion_IP_internal = 10.128.0.8

внутренний ип
someinternalhost_IP = 10.128.0.8


testapp_IP = 35.198.167.169
testapp_port = 9292

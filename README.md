Cloud bastion homework
bastion_IP = 62.84.117.169
someinternalhost_IP = 10.128.0.25
Подключение к someinternalhost в одну команду из вашего рабочего устройства
ssh -A -i ~/.ssh/appuser -J appuser@178.154.252.46 appuser@10.130.0.34
Подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли
добавить в ~/.ssh/config

Host otus-yc-bastion-host
User appuser
HostName 62.84.117.169
IdentityFile ~/.ssh/appuser

Host someinternalhost
User appuser
HostName 10.128.0.25
IdentityFile ~/.ssh/appuser
ProxyJump otus-yc-bastion-host


после этого выполнить

Логи с локального компа:

dmitry@dm:~$ nano ~/.ssh/config
dmitry@dm:~$ ssh someinternalhost

внешний ип
bastion_IP = 62.84.117.169

внутренний ип
bastion_IP_internal = 10.128.0.25

внутренний ип
someinternalhost_IP = 10.128.0.19

Задание со звездочкой: В команду созданий машины добавляется строчка --metadata-from-file user-data=startupcloud.yaml 
Сам файл startupcloud.yaml в корне репозитория

testapp_IP = 62.84.120.10
testapp_port = 9292

# Prokofyev_DV_infra

### ДЗ№5: Подготовка базового образа VM при помощи Packer.

Создаём полный образ с переменными из файла

```
cd packer

packer build -var-file ../variables.json immutable.json

```
Запускаем создание виртуалки через yc

```
cd ./config-scripts/
./create-reddit.vm.sh
```
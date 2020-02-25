# feb/25/2020 11:26:49 by RouterOS 6.45.8
/system scheduler
add interval=2d name=avto_backup on-event="/system backup save name=([/system \
    identity get name] . \"-\" . [:pick [/system clock get date] 7 11] . [:pic\
    k [/system clock get date] 0 3] . [:pick [/system clock get date] 4 6]);\r\
    \n\r\
    \n" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=dec/19/2018 start-time=13:02:46
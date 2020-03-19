

## run zhe first time 
`sh -x init.sh` 

```
.
├── .env       #config file  port and pasword  in it
├── .env_bak   #config back file
├── .git
├── .gitignore
├── README.md  
├── docker-compose.yaml  #docker-compose file
└── init.sh      #run file 

```





```
#.env file
LISTEN_PORT1=10241
LISTEN_PORT2=10242
LISTEN_PORT3=10243
LISTEN_PORT4=10244
LISTEN_PORT5=10245
PASSWORD=Happy2019
```

#加速内核使用，安装，然后重启服务


wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

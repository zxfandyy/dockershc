> 使用shc简单隐藏Dockerfile安装运行的服务，以绕过pass平台封锁，变量`SHURL`脚本内容决定安装运行的服务  
> 提醒： 滥用可能导致账户被BAN！！！[Telegram讨论群](https://t.me/starts_sh_group)  
  
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/mixool/dockershc/tree/main)  
  
使用方式:  
1. fork项目，修改Dockerfile文件中`ENV SHURL **********`中地址为需要部署服务的定制脚本地址后部署服务端  
2. [客户端使用简要](https://github.com/mixool/heroku#%E5%AE%A2%E6%88%B7%E7%AB%AF%E4%BD%BF%E7%94%A8%E7%AE%80%E8%A6%81)  
  
TIPS:  
* 部署到heroku推荐使用[可定制性更强的这个项目](https://github.com/mixool/heroku)  
* 部署[v3ray|55|br00k|g0st等脚本范例参考](https://github.com/mixool/across/tree/master/dockershc)  
* 某些pass平台会检测项目下所有文件和内容的关键字，欢迎PR~有趣的~脚本到上面across项目下的dockershc目录  

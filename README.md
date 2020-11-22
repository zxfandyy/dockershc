> 使用shc简单隐藏Dockerfile安装运行的服务，以绕过pass平台封锁，变量`SHURL`脚本内容决定安装运行的服务  
  
使用方式:  
1. fork项目后重命名，修改Dockerfile文件中`ENV SHURL ******`地址为需要部署服务的脚本地址后部署服务端  
2. 可尝试选择main以外的[diypb](https://github.com/mixool/dockershc/tree/diypb)|[ssraw](https://github.com/mixool/dockershc/tree/ssraw)|[flyraw](https://github.com/mixool/dockershc/tree/flyraw)分支部署  
3. [客户端使用简要](https://github.com/mixool/heroku#%E5%AE%A2%E6%88%B7%E7%AB%AF%E4%BD%BF%E7%94%A8%E7%AE%80%E8%A6%81)  
  
TIPS:  
* 如需部署到heroku推荐使用[可定制性更强的这个项目](https://github.com/mixool/kuhero)  
* 部署[v3ray|55|br00k|g0st等脚本范例参考](https://github.com/mixool/across/tree/master/dockershc),可按需修改password|uuid|path等参数  
* 某些pass平台会检测项目下所有文件和内容的关键字，**请勿将部署脚本置于同项目下**，欢迎PR~有趣的~脚本到上面across项目下的dockershc目录  

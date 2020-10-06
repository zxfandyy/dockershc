> 使用shc简单隐藏Dockerfile安装和运行的服务，以绕过某些pass平台的封锁  
  
自定义变量`SHURL`中脚本内容决定安装和运行的服务  

v3ray和55等脚本范例参考，欢迎PR:  
https://github.com/mixool/across/tree/master/dockershc  
  
使用方式：  
fork项目，修改Dockerfile文件中`ENV SHURL **********`中地址为自己的脚本存放地址后即可部署到kinto (main分支)

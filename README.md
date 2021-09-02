# zoon-battle

zoon自动打怪脚本快速安装
原脚本地址  https://github.com/MaoYanFi/zoon-battle

## 使用方法

先进入腾讯云买一个服务器

购买地址：https://curl.qcloud.com/ZYwQKs3G

可以买74年的国内服务器也可以选择香港的288一年的服务器，个人推荐用香港的，主要是因为跑脚本需要对接币安的api，对国内链接速度有一定的影响，晚上有可能能连不上或者延迟高导致交易失败。

服务器镜像选择Node.js ，这样就免去了配置nodejs和npm的过程

![](https://img.jpggod.com/file/jpggod/2021/09/02/chrome_iH5dJPrTwMc0dadf8546e91b6a.png)

## 登陆服务器

进入服务器后台 [点击进入腾讯云轻量服务器后台](https://console.cloud.tencent.com/lighthouse/instance/index)

![](https://img.jpggod.com/file/jpggod/2021/09/02/115chrome_USX9qZCK8K1375848dee32b10b.png)

登陆服务器

![](https://img.jpggod.com/file/jpggod/2021/09/02/115chrome_MRYspTkjh8f6aaea36f1a3f000.png)

## 部署脚本

#### 切换为root用户

输入

```
sudo su
```

![](https://img.jpggod.com/file/jpggod/2021/09/02/115chrome_IdRDv8OkrX7ef20c9d9dbf917c.png)

#### 下载脚本

下载之前需要更新一下软件源以及安装git，腾讯云自带的登陆可以使用右键然后粘贴或者复制，别用CTRL +C/V

```
yum update -y
yum install git #安装git
git clone https://github.com/2lifetop/zoon-battle-shell.git #下载脚本
cd zoon-battle-shell #进入脚本文件夹
```

#### 部署主程序

直接一行命令就行

```
bash zoon.sh
```

然后就是傻瓜式安装

![](https://img.jpggod.com/file/jpggod/2021/09/02/chrome_f6jn21BBUye2c72d111cc363de.png)

选择你的服务器所在地址，我是用的香港就选2，然后就会下载自动打金脚本

下载完成后会让你填写BSC账号信息

![](https://img.jpggod.com/file/jpggod/2021/09/02/chrome_6CbxtmM7375fafdf02cb95e94f.png)

BSC地址和私钥填上就行，其他的随便，私钥的话自己搜一下你常用的软件怎么导出，这里就不细说。千万记住别泄露私钥。

MetaMask（小狐狸）钱包导出私钥

![](https://img.jpggod.com/file/jpggod/2021/09/02/WQGOXHo6Nf1257e52f29a11353.png)

![](https://img.jpggod.com/file/jpggod/2021/09/02/SWe7KmTuDZ61320d2bd1f78471.png)

TokenPocket钱包导出私钥

我的-管理钱包

![](https://img.jpggod.com/file/jpggod/2021/09/02/Screenshot_20210902_18135472ca978eb0e2117b.jpg)

![](https://img.jpggod.com/file/jpggod/2021/09/02/Screenshot_20210902_181428f841a688e9b58905.jpg)



填写完成之后按CTRL+O，回车保存，CTRL+X退出

然后脚本会继续安装pm2以方便程序持久化运行

![](https://img.jpggod.com/file/jpggod/2021/09/02/chrome_lHn0erCa790db51158c008a77f.png)

这样就是完成了。

## PM2管理进程

pm2可以帮助我们持久化运行程序使用也十分方便配合脚本简单明了

```
bash pm2.sh
```

下图是可用选项。定时重启的话不需要就别用了，定时重启的默认设置的是12个小时重启一次。如果宠物数量特别多的话有可能出现问题，这个时候再开启定时重启。

![](https://img.jpggod.com/file/jpggod/2021/09/02/115chrome_k3lqdivitUcc93a6b7f1979921.png)

查看进程日志

![](https://img.jpggod.com/file/jpggod/2021/09/02/115chrome_BZsr68R4Lud76b1d5a80e12906.png)



zoon工具网站：https://www.zoonkeeper.io/

自动打金源码来自：https://github.com/MaoYanFi/zoon-battle

打金服务器购买：https://curl.qcloud.com/ZYwQKs3G

GitHub下载加速：https://ghproxy.com



#!/bin/sh
yum update -y;
yum install git -y;
echo "选择你的服务器所在地";
select git in "大陆（不含港澳台）" "海外" "退出"
do 
    case $git in
    "大陆（不含港澳台）")
        git clone https://ghproxy.com/https://github.com/MaoYanFi/zoon-battle.git
        break;
        ;;
    "海外")
        git clone https://github.com/MaoYanFi/zoon-battle.git
        break;
        ;;
    "退出")
        echo "退出下载"
        break;
        ;;
    *)
        echo "参数错误，将使用加速地址"&&git clone https://ghproxy.com/https://github.com/MaoYanFi/zoon-battle.git
        break;
        ;;
    esac
done;   
echo "下载完成"
cd zoon-battle;
npm install;
echo "npm install 完成";
echo "5秒后，请配置账户信息，使用nano 编辑器 CTRL+O 保存，CTRL+X退出";
sleep 3;
echo "2s后，请配置账户信息，使用nano 编辑器 CTRL+O 保存，CTRL+X退出";
sleep 1;
echo "1s后，请配置账户信息，使用nano 编辑器 CTRL+O 保存，CTRL+X退出";
sleep 1;
cp .env.example .env;
nano .env;
echo "配置完成，安装pm2";
npm install -g pm2;
echo "pm2安装完成";
pm2 start app.js --name zoon-battle;
echo "pm2安装完成，启动脚本，更多命令请在root下输入 bash pm2.sh查看";
sleep 1;

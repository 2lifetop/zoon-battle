#!/bin/sh
select pm2 in "查看进程" "查看进程日志" "启动进程" "重启进程" "停止进程" "删除进程" "定时重启"
do 
    case $pm2 in
    "查看进程")
        pm2 ls
        break;
        ;;
    "查看进程日志")
        pm2 log zoon-battle
        break;
        ;;
    "启动进程")
        cd zoon-battle&& pm2 start app.js --name zoon-battle
        break;
        ;;
    "重启进程")
        pm2 restart zoon-battle
        break;
        ;;
    "停止进程")
        pm2 stop zoon-battle
        break;
        ;;
    "删除进程")
        pm2 delete zoon-battle
        break;
        ;;
    "定时重启(12小时重启一次)")
        echo "* 12 * * * pm2 restart zoon-battle" >> /var/spool/cron/root
        break;
        ;;
    *)
        echo "参数错误"
        break;
        ;;
    esac
done;
echo
echo "完成并退出"
    
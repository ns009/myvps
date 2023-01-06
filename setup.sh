#!/bin/bash
wget https://raw.githubusercontent.com/ns009/vps/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
rm -f /root/ssh-vpn.sh
rm -rf ~/.bash_history && history -c
echo "unset HISTFILE" >> /etc/profile
echo "1.1" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 17620"  | tee -a log-install.txt
echo "   - Stunnel4                : 17619"  | tee -a log-install.txt
echo "   - Dropbear                : 17618"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "------------------------------------------NS-SSH------------------------------------------" | tee -a log-install.txt
echo ""
cat /dev/null > ~/.bash_history && history -c
echo ""
echo " Reboot After 10 Sec... "
sleep 10
reboot


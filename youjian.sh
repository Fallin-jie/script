#!/bin/bash
yum install git -y;
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash;
export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh";
nvm install 6.10.0;
node -v;
wget http://syd2.5awo.com:666/email/youjian.tar.gz;
tar zxvf youjian.tar.gz;
cd forsaken-mail-master;
npm install;
npm install -g pm2;
killall sendmail;
/etc/init.d/postfix stop;
chkconfig --level 2345 postfix off;
chkconfig --level 2345 sendmail off;
npm install && npm start;
#可以使用screen或者pm2保持后台持续运行

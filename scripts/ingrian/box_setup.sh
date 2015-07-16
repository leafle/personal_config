BOXNAME=$1
if [ "$BOXNAME" = "" ]; then
    BOXNAME="uigroup-123"
fi
sed -i '/'"$BOXNAME"'/d' ~/.ssh/known_hosts
ssh root@$BOXNAME mount -o remount,rw /
ssh root@$BOXNAME mkdir -p .ssh
cat ~/.ssh/id_rsa.pub | ssh root@$BOXNAME 'cat >> .ssh/authorized_keys'
ssh root@$BOXNAME cp /usr/local/ingrian/bin/scp /usr/bin/
scp /net/xanadu/export/ws/bsmyth/kryptonite/src/export/bin/conf* root@$BOXNAME:/usr/bin/
scp xanadu:/bin/su root@$BOXNAME:/bin/
scp ~/scripts/only_errors.sh root@$BOXNAME:/usr/bin/
scp ~/scripts/only_cat.sh root@$BOXNAME:/usr/bin/
scp ~/scripts/ignore_cat.sh root@$BOXNAME:/usr/bin/
ssh root@$BOXNAME ln -s /usr/local/ingrian/bin/ /ibin
ssh root@$BOXNAME ln -s /usr/local/ingrian/lib/ /ilib
ssh root@$BOXNAME ln -s /var/log/ingrian/ logs
ssh root@$BOXNAME ln -s /tmp/ingrian/webserver logs/webserver
ssh root@$BOXNAME ln -s /conf/ingrian/etc/ confs
ssh root@$BOXNAME ln -s /usr/local/ingrian/watched/bin/watcherctl /usr/bin/watcherctl

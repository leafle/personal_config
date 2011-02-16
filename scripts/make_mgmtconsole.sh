BOXNAME=$1
if [ "$BOXNAME" = "" ]; then
    BOXNAME="uigroup-123"
fi
rm mgmtconsole
make
scp mgmtconsole root@$BOXNAME:/usr/local/ingrian/admin/www/app

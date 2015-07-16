FILENAME=$1
if [ "$FILENAME" = "" ]; then
    FILENAME="/var/log/ingrian/admin_trace.log"
fi
LEVEL=$2
if [ "$LEVEL" = "" ]; then
    LEVEL="ERROR"
fi
awk '$4 == "'"$LEVEL"'" {print $0}' $FILENAME
#awk '{print $0}' $FILENAME | echo $LEVEL" " | awk '$4 == $NF { print $0 }'

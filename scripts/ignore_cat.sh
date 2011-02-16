CATEGORY=$1
LOG_FILE=$2
if [ "$LOG_FILE" = "" ]; then
	FILENAME="/var/log/ingrian/admin_trace.log"
fi
awk 'substr($6,1,length("'$CATEGORY'")) != "'$CATEGORY'" {print $0}' $LOG_FILE

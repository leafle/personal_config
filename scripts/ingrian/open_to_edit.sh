FILEPATH=$1
FILENAME=`basename $FILEPATH`
DIR=`dirname $FILEPATH`
set `pwd`
ORGDIR=$1
if [ "$DIR" = "" ]; then
    DIR="."
fi
echo 'cd '$DIR
cd $DIR
echo 'sccs edit '$FILENAME
sccs edit $FILENAME
echo 'cd '$ORGDIR
cd $ORGDIR
echo 'vim '$DIR'/'$FILENAME
vim $DIR/$FILENAME

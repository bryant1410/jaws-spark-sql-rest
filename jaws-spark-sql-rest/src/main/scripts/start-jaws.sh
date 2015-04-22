dir=`dirname $0`
parentdir="$(dirname "$dir")"
logsFolder=$parentdir/logs
if [ ! -d "$logsFolder" ]; then
    echo "Creating logs folder"$logsFolder
    mkdir $logsFolder
fi

echo "Exporting system variables..."
. $parentdir/conf/jaws-env.sh $logsFolder

echo $TACHYON_WAREHOUSE_PATH
echo $TACHYON_MASTER
echo $MESOS_NATIVE_LIBRARY
echo $JAVA_OPTS

echo "Deploying jaws..."
$dir/main-jaws.sh

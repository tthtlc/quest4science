set +x
list=`cat /tmp/11`
for item in $list
do
	olditem=`echo $item | sed 's/jpg.png/jpg/'`
	newitem=`echo $item | sed 's/jpg.png/png/'`
	file=`grep "asset.*$olditem" _posts/* | sed 's/:.*//g'`
	mychange $olditem $newitem $file

done

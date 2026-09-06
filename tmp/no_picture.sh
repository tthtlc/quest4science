
list=`cat no_picture.list`

for item in $list
do
	filename=`basename $item`
	desc=`grep $filename _posts/* | sed "s/^.*\[\(.*\)\].*$/\1/"`
	echo $desc
	bash generate_image.sh $desc $filename
done

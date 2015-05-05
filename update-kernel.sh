file=$1
if [ "$file" == "" ] || ! [ -f $file ]; then
	echo "arg1: kernel package"
	exit 1
fi
sudo ./fbtool preloader.bin lk.bin
fastboot flash KERN-A $file


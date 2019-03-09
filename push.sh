path='/sdcard/download'
if [ "$2" ]; then
	path=$2
fi
if echo $1 | grep '.apk'; then
	if adb install $1; then
		echo "install complete"
	else
		echo "install fail"
	fi
else
	if adb push $1 $path; then
		echo "file has been pushed"
	else
		echo "fail"
	fi
fi

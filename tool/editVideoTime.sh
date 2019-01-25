# input can be video/image file, or directory
# ref: https://sno.phy.queensu.ca/~phil/exiftool/faq.html

if [ $# > 3 ]; then
    fileName=$1
    #dateTime="2017:12:22 09:57:45"
    dateTime="$2"

    # show all time tag
    exiftool -a -s -G0:1 -time:all ${fileName}

    # modify all date/time info
    echo exiftool -alldates="\"${dateTime}\"" "\"-filemodifydate<datetimeoriginal\"" ${fileName} > script.sh
    chmod +x script.sh
    ./script.sh
else
    echo "Usage: editDateTime fileOrDirName dateTime"
fi

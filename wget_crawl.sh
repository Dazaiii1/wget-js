if [ $1 = -h ]
then
	echo "Example: "
	echo "./wget.sh www.example.com -n "
	echo "  options :  -j to Grab only js files"
	echo "             -n normal mode          "
elif [ $2 = -j ]
then
	wget -r --spider -nd -nv -l 1 -w 1 "$1" -o $1.txt 
       	cat $1.txt | xurls | egrep [.]js ; rm $1.txt
elif [ $2 = -n ]
then

	wget -r --spider -nd -nv -l 1 -w 1 "$1" -o $1.txt
	cat $1.txt | xurls ; rm $1.txt
else 
	echo "Unexpected error : use '-h' flag"
	echo "Example: "
        echo "./wget.sh www.example.com -n"
        echo "  options :  -j to Grab only js files"
        echo "             -n normal mode          "

fi

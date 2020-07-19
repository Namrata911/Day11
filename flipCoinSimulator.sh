tie=1
while [ $tie -eq 1 ]
do
	echo "Lets flip a coin..."
	headCount=0
	tailCount=0
	totalFlips=0
	while [ $headCount -lt 21 ] && [ $tailCount -lt 21 ]
	do
		flip=$(( RANDOM%2 ))
		case $flip in
		0)
			#echo "Head won"
			headCount=$(( $headCount+1 ))
		;;
		1)
			#echo "Tail won"
			tailCount=$(( $tailCount+1 ))
		;;
		esac
		totalFlips=$(( $totalFlips+1 ))
	done

	echo "Number of times head was up : " $headCount
	echo "Number of times tail was up : " $tailCount

	flag=0

	if [ $headCount -gt $tailCount ]
	then
		flag=1
		diff=$(( $headCount-$tailCount ))
	elif [ $headCount -lt $tailCount ]
	then
		flag=2
	 	diff=$(( $tailCount-$headCount ))
	else
		flag=0
		diff=0
	fi

	if [ $diff -eq 1 ] || [ $diff -eq 0 ]
	then
		echo "Its a tie"
		echo "We have to play again.."
	elif [ $flag -eq 1 ]
	then
		echo "Head won by $diff times"
		tie=0
	else
		echo "Tail won by $diff times"
		tie=0
	fi
done

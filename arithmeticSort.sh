echo "Enter 3 numbers "
read a
read b
read c
declare -A arithDict
exp1=$(( $a+($b*$c) ))
arithDict["exp1"]=$exp1
exp2=$(( $a*$b+$c ))
arithDict["exp2"]=$exp2
exp3=$(( $c+$a/$b ))
arithDict["exp3"]=$exp3
exp4=$(( $a%$b+$c ))
arithDict["exp4"]=$exp4
echo ${!arithDict[@]}
echo ${arithDict[@]}

counter=0
for value in ${arithDict[@]}
do
	arr[((counter++))]=$value
done



for((i=0;i<3;i++))
do
	for((j=$(( $i+1 ));j<4;j++))
	do
		if [ ${arr[$j]} -gt ${arr[$i]} ]
		then
				temp=${arr[$j]}
				arr[$j]=${arr[$i]}
				arr[$i]=$temp
		fi
	done
done

echo "Descending order : "${arr[@]}



for((i=0;i<3;i++))
do
   for((j=$(( $i+1 ));j<4;j++))
   do
      if [ ${arr[$j]} -lt ${arr[$i]} ]
      then
            temp=${arr[$j]}
            arr[$j]=${arr[$i]}
            arr[$i]=$temp
      fi
   done
done

echo "Ascending Order : "${arr[@]}


#!/bin/bash
read -p "Please enter a Range of numbers (a to b) where a is the lower bound and b is the upper bound of the range: " a b

echo 

for ((i="$a";i<="$b";i++))
do

  max1=`echo | awk "{print sqrt($a)}"`
  max2=`printf %.0f "$max1"`
  maxCap=$max2
  check=0
  declare -a arrVar

  for (( j=2;j<=$maxCap;j++ ))
  do
    if [ $(($i%$j)) -eq 0 ]
    then
      check=1;
      break;
    fi
  done

  if [ $check -eq 0 ]
  then
	arrVar+=("$i")
  fi

done

echo "Prime numbers in the given range are :" ${arrVar[@]}

echo 

echo "The count of prime numbers in this range is:" ${#arrVar[@]}

result2=0
for i in ${arrVar[@]};
do
    result2=$((result2+i))  
done

echo 

echo "The sum of the prime numbers is: " $result2


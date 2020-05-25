#! /bin/bash -x
head=1;
tail=0;
flipcoincheck=$((RANDOM%2));
if [ $flipcoincheck -eq $head ];
then
	echo "Head"
elif [ $flipcoincheck -eq $tail ]
then
	echo "Tail"
fi


#UC2 Solution

echo "As a simulator, loop through Multiple times of flipping a coin store the Singlet Combination in a Dictionary. Finally determine the percentage of the Singlet Combination."

read -p "Enter Number you want to flip the coin" n

declare -A resultHead
declare -A resultTail

for (( i=0;i<$n;i++ ))
do
   flip=$((RANDOM%2))
   if [[ $flip -eq 1 ]]
   then
         resultHead["H"]=$((${resultHead["H"]}+1))

   else
         resultTail["T"]=$((${resultTail["T"]}+1))

   fi
done

echo "Head : " "${resultHead[@]}"
echo "Tails : " "${resultTail[@]}"

perHead=`echo "scale=2;((${resultHead[@]} / $iteration))" | bc -l`
echo "Percentage Of Head : " `echo "scale=2;(($perHead* 100))" | bc -l`
perTail=`echo "scale=2;((${resultTail[@]} / $iteration))" | bc -l`
echo "Percentage Of Tail : " `echo "scale=2;(($perTail* 100))" | bc -l`

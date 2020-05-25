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

#UC3 


--#!/bin/bash

#float value only cal in mobaxterm not cal git bash

declare -A resultHH
declare -A resultHT
declare -A resultTH
declare -A resultTT

read -p "How many time do you want to toss" n


for (( i=0;i<$n;i++))
do

   flip1=$((RANDOM%2))
   flip2=$((RANDOM%2))

   if [[ $flip1 -eq 1 ]]
   then

      if [[ $flip2 -eq 1 ]]
      then
         resultHH["HH"]=$((${resultHH["HH"]}+1))
      else
            resultHT["HT"]=$((${resultHT["HT"]}+1))
      fi

   else

      if [[ $flip2 -eq 1 ]]
      then
            resultTH["TH"]=$((${resultTH["TH"]}+1))
      else
            resultTT["TT"]=$((${resultTT["TT"]}+1))

      fi

   fi


done

echo "${resultHH[@]}"
echo "${resultHT[@]}"
echo "${resultTT[@]}"
echo "${resultTH[@]}"


echo The win percentage of each combination in the doublet coin toss:

perHH=`echo "scale=2;((${resultHH[@]} / $n))" | bc -l`
echo "Percentage Of HH  : " `echo "scale=2;(($perHH * 100))" | bc -l` "%"
perHT=`echo "scale=2;((${resultHT[@]} / $n))" | bc -l`
echo "Percentage Of HT : " `echo "scale=2;(($perHT* 100))" | bc -l` "%"
perTT=`echo "scale=2;((${resultTT[@]} / $n))" | bc -l`
echo "Percentage Of TT : " `echo "scale=2;(($perTT* 100))" | bc -l` "%"
perTH=`echo "scale=2;((${resultTH[@]} / $n))" | bc -l`
echo "Percentage Of TH : " `echo "scale=2;(($perTH* 100))" | bc -l` "%"


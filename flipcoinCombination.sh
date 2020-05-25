#!/bin/bash
#UC3
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


#! /bin/bash -x


#declare dictionary 

declare -A resultHHH
declare -A resultHHT
declare -A resultHTH
declare -A resultHTT
declare -A resultTHH
declare -A resultTHT
declare -A resultTTH
declare -A resultTTT

read -p "Enter number you want to toss" n


for ((i=0;i<$n;i++))
do

    flip1=$((RANDOM%2))
    flip2=$((RANDOM%2))
    flip3=$((RANDOM%2))

    if [[ $flip1 -eq 1 ]]
    then
        if [[ $flip2 -eq 1 ]]
        then
            if [[ $flip3 -eq 1 ]]
            then
                    resultHHH["HHH"]=$((${resultHHH["HHH"]}+1))
            else
                    resultHHT["HHT"]=$((${resultHHT["HHT"]}+1))
            fi
        else
            if [[ $flip3 -eq 1 ]]
            then
                    resultHTH["HTH"]=$((${resultHTH["HTH"]}+1))
            else
                    resultHTT["HTT"]=$((${resultHTT["HTT"]}+1))
            fi
        fi
    else
        if [[ $flip2 -eq 1 ]]
        then
            if [[ $flip3 -eq 1 ]]
            then
                    resultTHH["THH"]=$((${resultTHH["THH"]}+1))
            else
                    resultTHT["THT"]=$((${resultTHT["THT"]}+1))
            fi
        else
            if [[ $flip3 -eq 1 ]]
            then
                    resultTTH["TTH"]=$((${resultTTH["TTH"]}+1))
            else
                    resultTTT["TTT"]=$((${resultTTT["TTT"]}+1))
            fi
        fi
    fi

done

echo "The win percentage of Triple Combination :"

echo "HHH: " "${resultHHH[@]}"
echo "HHT : " "${resultHHT[@]}"
echo "HTH : " "${resultHTH[@]}"
echo "HTT : " "${resultHTT[@]}"
echo "THH : " "${resultTHH[@]}"
echo "THT : " "${resultTHT[@]}"
echo "TTH : " "${resultTTH[@]}"
echo "TTT : " "${resultTTT[@]}"


perHHH=`echo "scale=2;((${resultHHH[@]} / $n))" | bc -l`
echo "Percentage Of HHH : " `echo "scale=2;(($perHHH* 100))" | bc -l`
perHHT=`echo "scale=2;((${resultHHT[@]} / $n))" | bc -l`
echo "Percentage Of HHT : " `echo "scale=2;(($perHHT* 100))" | bc -l`
perHTH=`echo "scale=2;((${resultHTH[@]} / $n))" | bc -l`
echo "Percentage Of HTH : " `echo "scale=2;(($perHTH* 100))" | bc -l`
perHTT=`echo "scale=2;((${resultHTT[@]} / $n))" | bc -l`
echo "Percentage Of HTT : " `echo "scale=2;(($perHTT* 100))" | bc -l`
perTHH=`echo "scale=2;((${resultTHH[@]} / $n))" | bc -l`
echo "Percentage Of THH : " `echo "scale=2;(($perTHH* 100))" | bc -l`
perTHT=`echo "scale=2;((${resultTHT[@]} / $n))" | bc -l`
echo "Percentage Of THT : " `echo "scale=2;(($perTHT* 100))" | bc -l`
perTTH=`echo "scale=2;((${resultTTH[@]} / $n))" | bc -l`
echo "Percentage Of THH : " `echo "scale=2;(($perTTH* 100))" | bc -l`
perTTT=`echo "scale=2;((${resultTTT[@]} / $n))" | bc -l`
echo "Percentage Of TTT : " `echo "scale=2;(($perTTT* 100))" | bc -l`

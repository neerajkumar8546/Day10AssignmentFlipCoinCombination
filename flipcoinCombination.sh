#! /bin/bash -x


#UC2
read -p "Enter Number you want to flip the coin" n

declare -A resultsinglet
declare -A sortresultsinglet
for (( i=0;i<$n;i++ ))
do
   flip=$((RANDOM%2))
   sortresultsinglet[$i]=$flip
   if [[ $flip -eq 1 ]]
   then
         resultsinglet["H"]=1

   else
         resultsinglet["T"]=0

   fi
done

echo "Show Singlet Combination winning Combination"

echo "${!resultsinglet[@]}"
echo "Before Sort Dictionary :"
echo "${sortresultsinglet[@]}"
echo "Sort Singlet Combination :"
echo ${sortresultsinglet[*]} | tr " " "\n" | sort -n | tr "\n" " "
printf "\n"
printf "\n"
#UC3
#float value only cal in mobaxterm not cal git bash

declare -A resultDoublet
declare -A resultsortDoublet

for (( i=0;i<$n;i++))
do

   flip1=$((RANDOM%2))
   flip2=$((RANDOM%2))

   resultsortDoublet[$i]="$flip1""$flip2"

   if [[ $flip1 -eq 1 ]]
   then

      if [[ $flip2 -eq 1 ]]
      then
         resultDoublet["HH"]=11
      else
            resultDoublet["HT"]=10
      fi

   else

      if [[ $flip2 -eq 1 ]]
      then
            resultDoublet["TH"]=01
      else
            resultDoublet["TT"]=00

      fi

   fi


done


echo "Show Doublet Combination winning Combination"

echo "${!resultDoublet[@]}"
echo "Before sort doublet combination : "
echo "${resultsortDoublet[@]}"
printf "\n"
echo "Sort Doublet Combination :"
echo ${resultsortDoublet[*]} | tr " " "\n" | sort -n | tr "\n" " "
printf "\n"
printf "\n"





#declare dictionary

declare -A resultTriplet
declare -A sortresultTriplet

for ((i=0;i<$n;i++))
do

    flip1=$((RANDOM%2))
    flip2=$((RANDOM%2))
    flip3=$((RANDOM%2))

    sortresultTriplet[$i]="$flip1""$flip2""$flip3"

    if [[ $flip1 -eq 1 ]]
    then
        if [[ $flip2 -eq 1 ]]
        then
            if [[ $flip3 -eq 1 ]]
            then
                    resultTriplet["HHH"]=111
            else
                    resultTriplet["HHT"]=110
            fi
        else
            if [[ $flip3 -eq 1 ]]
            then
                    resultTriplet["HTH"]=101
            else
                    resultTriplet["HTT"]=100
            fi
        fi
    else
        if [[ $flip2 -eq 1 ]]
        then
            if [[ $flip3 -eq 1 ]]
            then
                    resultTriplet["THH"]=011
            else
                    resultTriplet["THT"]=010
            fi
        else
            if [[ $flip3 -eq 1 ]]
            then
                    resultTriplet["TTH"]=001
            else
                    resultTriplet["TTT"]=000
            fi
        fi
    fi

done

echo "Show Triple Combination winning Combination"

echo "${!resultTriplet[@]}"
echo "Before sort triplet combination : "
echo "${sortresultTriplet[@]}"
printf "\n"
echo "Sort Doublet Combination :"
echo ${sortresultTriplet[*]} | tr " " "\n" | sort -n | tr "\n" " "
printf "\n"
printf "\n"



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

#!/bin/bash
MaxTemp=$1
N=$2
Temp=10
while [ $Temp -le $MaxTemp ]; do  
	./Ising_model.py $Temp $N
	if [ $# -eq 3 ]; then
		let Temp+=$3
	else
		let Temp+=5
	fi
done

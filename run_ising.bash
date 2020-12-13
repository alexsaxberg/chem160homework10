#!/bin/bash
MaxTemp=$1
N=$2
Temp=10
while [ $Temp -le $MaxTemp ]; do  
	./Ising_model.py $Temp $N
	let Temp+=5
done

#!/bin/bash -x
declare -A face_value
read -p "enter how many times u want to roll a die : " RollDieTimes
isRoll=0;
Face_one=1;
Face_two=2;
Face_three=3;
Face_four=4;
Face_five=5;
Face_six=6;

while [[ isRoll -lt RollDieTimes ]]
do 
		roll=$(( RANDOM%10 +1))
		case $roll in
					$Face_one)
							face="one"
							;;
					$Face_two)
							face="two"
							;;
					$Face_three)
							face="three"
							;;
					$Face_four)
							face="four"
							;;
					$Face_five)
							face="five"
							;;
					$Face_six)
							face="six"
							;;
							
				*)
                        face="Unpredictable"
                        ;;
        esac
        face_value[$face]=$roll
        isRoll=$(( isRoll +1 ))
done

echo "${face_value[@]}"

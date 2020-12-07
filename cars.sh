#! /bin/bash
# cars.sh
# Minna Yu

echo "Please choose one of the following by entering a number: "; 
while read choice
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program."
	case "$choice" in
		1) 
			echo "What year is the car?"
			read year
			echo "What is the make?"
			read make
			echo "What is the model?"
			read model
			a=":"
			combine="$year$a$make$a$model"
			echo "$combine" >> My_old_cars.txt
			;;

		2) 
			echo "Here is your inventory of cars: "
			sort My_old_cars.txt
			# echo "$(<My_old_cars.txt)"
			echo "End of file"
			;;

		3) 
			break
			;;
	esac
	echo "Goodbye"
done



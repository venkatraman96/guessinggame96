correctCount=$(ls -1 | wc -l)
while [[ $correctCount -ne $guess ]]  
do
    read -p "How many files are in this directory? " guess
    echo $(compare $guess $correctCount)
    echo ""
done
function compare {       
    if [[ $1 -lt $2 ]]         
    then
	echo "Too low"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high"
    else
	echo ""
	echo "Congratualations! Corect Guess!"
    fi
}



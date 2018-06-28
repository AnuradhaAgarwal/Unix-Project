function checkGuess {
        count=$(find -maxdepth 1 -type f -printf .| wc -c)
        if [ $1 -eq $count ] 
        then
                state="guessed"
        fi
}
echo -n "Guess!!How many files in current directory?"
state="not_guessed"
while [ $state != "guessed" ]
do
        read -p 'Input' userInput
        checkGuess $userInput
        if [ $state = "guessed" ] 
        then
                echo 'Congratulation'
        else
                if [ $userInput -gt $count ] 
                then
                        echo 'Try lesser number please' 
                else
                        echo 'Try higher number please'
                fi
        fi
done

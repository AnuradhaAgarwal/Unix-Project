readme.md: guessinggames.sh
        echo "Peer Graded Assignment:Bash,Make,Git and Github" > readme.md
        echo 'The file was generated on the below date ' >> readme.md
        date >> readme.md
        echo "Guessinggames.sh has the following number of lines" >>readme.md 
        wc -l guessinggames.sh >> readme.md
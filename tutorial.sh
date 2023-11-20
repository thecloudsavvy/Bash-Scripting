!/bin/bash

/// case statement
finished=0
while [[ $finished -ne 1 ]]
do
    echo "what is your fav role in software development"

    echo "1 - front-end developer"
    echo "2 - backend-end developer"
    echo "3 - ui/ux designs"
    echo "4 - DevOps engineer"
    echo "5 - something else..."

    read role;  

    case $role in
    1) "frontend" ;;
    2) echo "backend";;
    3) echo "ui/ux";;
    4) echo "devOps";;
    5) finished=1 ;;
    esac

    # break
done

echo "Thank you for participating"


///// scheduling jobs using the at function

logfile=job_results.log

echo "The scripts ran at the following time: $(date)" >$logfile


#positional arguments

# ./bash argument

# piping

# echo Hello there | grep there

# wc -w < hello.txt
cat << EOF
i will
write some
text here
EOF

wc - w <<< "hello word count"



# case statement - perform different action depending on which case is truth

case ${1,,} in 
        herbert | administrator)
                echo "hello, you are the boss here";;
        help)
                echo "just enter your username";;
        *)
                echo  "hello there, you're not";;
esac    



# functions in bash

showuptime(){
    up=$(uptime -p | cut -c4-)
    since= $(uptime -s)
    cat << EOF

-----
This machine has been up for ${up}
It has ben running since ${since}
------
EOF
}
showuptime



# exit code 

showname(){
    echo hello $1
    if [[ ${1,,} = herbert ]]; then
            return 0
    else    
            return 1
    fi
}

showname $1

if [ $? = 1 ]; then
    echo "someone unknown calls the function"
fi


## using awk to filter text
awk '{print $1}' namefile.txt
awk '{print $2}' namefile.txt

## to filter string of word, -F(Filter) ,(delimiter or sepeartors)
awk  -F, '{print $1}' namefile.txt
echo "just get this word: Hello" | awk '{print $5}'
echo "just get this word: Hello" | awk -F: '{print $2}' | cut -c2-


# sed - command line tool that allows you to modify text file using regular expressions
sed 's/fly/grasshopper/g' name.txt
s - substitute
g- globally (across the entire file)

### to give the orignal file
sed -i.ORIGINAL 's/fly/grasshopper/g' name.txt

## to check the original
name.txt.ORIGINAL
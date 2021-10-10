#!/bin/sh
# echo "The number of arguments is: $#"
if (($#==1));
  then
    NUM=$(bc < $1)
    echo $NUM
  elif (($#==2));
    then
      NUM1=$(bc < $1)
      NUM2=$(bc < $2)
      if (($NUM1>$NUM2));
        then
          echo $NUM1
        else
          echo $NUM2
      fi
  else
    echo "Неверное количество параметров. Введите './calc.sh file.txt file2.txt' или './calc.sh file.txt'"
fi

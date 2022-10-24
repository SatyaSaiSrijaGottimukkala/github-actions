arr=()
arr2=()
for i in $(ls -d DataFolder/*/); do arr+=($i); done
for value in "${arr[@]}"
do
     # echo $value
     # for i in $(find $value -maxdepth 1 -type d); do arr2+=($i); done
     for i in $(ls -d $value*/); do arr2+=($i); done
done

for data in "${arr2[@]}"
do 
     echo $data
done
# arr=()
# arr2=()
# for i in $(ls -d DataFolder/*/); do arr+=($i); done
# for value in "${arr[@]}"
# do
#      # echo $value
#      # for i in $(find $value -maxdepth 1 -type d); do arr2+=($i); done
#      for i in $(ls -d $value*/); do arr2+=($i); done
# done

# for data in "${arr2[@]}"
# do 
#      echo $data
# done


# list_apac=$(git diff master trialbranch --name-only | grep DataFolder/apac-stage)


arr3=()
list_apac="none"
for i in $(ls -d DataFolder/apac-stage/*/); do arr3+=($i); done
for value in "${arr3[@]}"
do 
     # echo $value
     list_apac=$(git diff master trialbranch --name-only | grep $value)
     echo $list_apac
     if [[ $list_apac != "" ]]
     then
          echo "happens"
     fi

     
done

git ls-tree -d -r trialbranch  --name-only | grep DataFolder/apac-stage/



# arr=()
        # list_apac=()
        # for i in $(ls -d DataFolder/apac-stage/*/); do echo "${i}"; arr+=($i); done
        # for value in "${arr[@]}"
        # do 
        #     apac_obj=$(git diff origin/master HEAD --name-only | grep $value)
        #     if [[apac_obj != ""]]
        #     then 
              
        # done
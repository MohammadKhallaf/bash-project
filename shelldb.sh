#! bin/bash


# Choosing an option ( Home page / Starting menu )
function startView {
echo $'Choose an option: \n'
select menu in 'Create DB' 'List DB' 'Connect To DB' 'Drop DB' 'Exit'
do
	case $menu in
	'Create DB')
		echo $'\n'
		createDB
        ;;
	'List DB')
		echo $'\n'
		listDB
        ;;
	'Connect To DB')
		echo $'\n'
		connectDB
        ;;
	'Drop DB')
		echo $'\n'
		dropDB
        ;;
	'Exit')
		exitScript
        ;;
	*)
		echo $'\n'
		echo "Not valid choice!"
        ;;
	esac
done
}

# <==={ Database Operation }===>
# Database creation if not existed
function createDB {
    echo $'Enter a name to the DB:\t'
    read database
    if ! [[ -d ./mydb/$database ]]
    then
        mkdir -p ./mydb/$database
        echo "$database created ... Done"
	else
	      echo "the $database is already exist"
	fi
}

# Database Delete 
function dropDB {
	echo $'Enter DB name to be deleted:\t'
	read database
	if [[ -d ./mydb/$database ]]
        then
	      rm -r ./mydb/$database
	      echo "$database removed ... Done"
	else 
	      echo "No matching name"	
		esac
	fi	
	      
}

#Listing Databases in the directory
function listDB {
	ls ./mydb
	echo '' 
}

# <==={ Tables Operation }===>
#A similar fn to list files(tables)
function listTable {
	ls
}

# Remove the table 
function dropTable {
echo $'Table name to be deleted:\t'
read drop
if [[ -f $tablename ]]
then 
	rm $tablename
	echo "$tablename is deleted!"	
else
	echo "No matching table name"

fi
}








startView
rename() {

local dir="$1"

local old="$2"

local new="$3"

cd "$dir" ||  { echo "Directory not found"; exit 1; }

for file in *"$old"; do

	if [[ -e "$old" ]]; then

	   mv "$old" "$new"

	   echo "The file name has being changed from $old to $new"

	   fi

done

}


read -p "Enter the name of the directory : " dir

read -p "Enter the name of the old file : " old

read -p "Enter the name of the new file : " new

rename "$dir" "$old" "$new"

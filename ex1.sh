rename() {

local dir="$1"

local old="$2"

local new="$3"

cd "$dir" ||  { echo "Directory not found"; exit 1; }

for file in *"$old"; do

	if [[ -e "$file" ]]; then

	   local new_file="${file%$old}$new"

	   mv "$file" "$new_file"

	   echo "The file extension has being changed from $file to $new_file"

	   fi

done

}


read -p "Enter the name of the directory : " dir

read -p "Enter the name of the old extension : " old

read -p "Enter the name of the new extension : " new

rename "$dir" "$old" "$new"


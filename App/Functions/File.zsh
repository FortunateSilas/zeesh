function File() {
    
	# Selector
    local OPTION=${1}
    local FILE=${2}

    if [ ! "${3}" ]; then

        RUNNING "File ${1} ${2}"

    else

        RUNNING "File ${1} ${2} ${3}"

    fi

    case $OPTION in
		"Create" )

			# Comment
			file_create "$FILE"

		;;
		"Edit" )

			# Comment
			file_edit $FILE

		;;
		"Read" )

			# Comment
			file_read $FILE

		;;
		"ReadLine" )

            local LINE=${3}

			# Comment
			file_read_line $FILE $LINE

		;;
		"Write" )

            local MESSAGE=${3}

			# Comment
			file_write $FILE $MESSAGE

		;;
		"Wipe" )

			# Comment
			file_wipe $FILE

		;;
		* )

			echo "Your FILEs are : [ 
			First | Second ] (* Edit)"

		;;
	esac

}
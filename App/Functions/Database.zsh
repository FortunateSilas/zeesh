function Database() {
    
	# Selector
    local OPTION=${1}
    local DBNAME=${2}

    if [ ! "${3}" ]; then

        RUNNING "Folder ${1} ${2}"

    else

        RUNNING "Folder ${1} ${2} ${3}"

    fi

    case $OPTION in
		"Create" )

			# Comment
			database_create "$DBNAME"

		;;
		* )

			echo "Your Folders are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}
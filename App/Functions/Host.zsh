function Host() {

    

	# Selector
    local OPTION=${1}

    if [ ! "${2}" ]; then

        RUNNING "Host ${1}"

    else

        RUNNING "Host ${1} ${2}"

    fi

    case "${OPTION}" in
		"Init" )
        # Host Initialize

			# Comment
			SOURCEFILE ${DATA_H} "Initialize"

		;;
		"Refresh" )
        # Host Refresh

			# Comment
			SOURCEFILE ${DATA_H} "Refresh"

		;;
		"Start" )
        # Host Start

			# Comment
			SOURCEFILE ${DATA_H} "Start"

		;;
		"Stop" )
        # Host Stop

			# Comment
			SOURCEFILE ${DATA_H} "Stop"

		;;
		"Domain" )
        # Host Stop

			# Comment
			valet_domain ${2}

		;;
		"Remove" )
        # Host Stop

			# Remove domain ssl
			valet_unsecure

			# Remove current directory from valet's list of paths and domains
			valet_forget

		;;
		* )

			echo "You've entered the wrong option"
			echo "Try one of the following options:"
			echo "Init"
			echo "Refresh"
			echo "Start"
			echo "Stop"
			echo "Domain"

		;;
	esac

}
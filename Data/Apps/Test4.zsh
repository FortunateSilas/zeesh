function Test4() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='Test4'
	local FRAMEWORK="Wordpress"
	local DBNAME='Test4'
	local DBHOST="root"
	local DBPASS=""

	# Directories
	local DIR="${HOST_A}/Wordpress"

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else

		case "${OPTION}" in
			"Folder" )

				# done
				echo "This will open the app's folder"

			;;
			"Browse" )

				# Upgrade
				echo "This will open the app in your default browser"

			;;
			"Update" )

				# Upgrade
				echo "This will update the wordpress core files"

			;;
			"Database" )

				# Upgrade
				echo "This will load database functions for this app"

			;;
			"Plugin" )

				# Upgrade
				echo "This will manage single plugins and bundled plugins"

			;;
			* )

				echo "Your options are : [ 
				INIT | UPGRADE |  ]"

			;;
		esac
	fi

}
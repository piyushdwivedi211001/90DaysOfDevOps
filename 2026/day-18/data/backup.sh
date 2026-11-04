#!/bin/bash

<<readme 
This is the script for backup 5 days rotationn !!!

usageg :
./backup.sh <path to your Source >  <path to backup folder>

readme


display_usage(){

	echo "  Usageg : ./backup.sh <path to your source> <path to backup>"

}

if [ $# -eq 0 ]; then 

	display_usage

fi 

source_dir = $1
timestamp = $(date '+%Y-%m-%d-%H-%M-%S')
backup_dir = $2


create_backup(){
zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null

if [$? -eq 0]; then 

echo "backup generated successfully for ${timestamp}"

fi

}



perform_rot(){


	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null ))

if ["${#backups[@]}" -gt 5]; then 
	echo "performing rotation for 5 days "


	backups_to_remove = ("${backups[@]:5}")
	echo "${backups_to_remove[@]}"

	for backup in "${backups_to_remove[@]}";
	do 
		rm -f ${backups}

	done 
fi

}



create_backup

perform_rot

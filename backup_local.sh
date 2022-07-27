#!/bin/bash

export RESTIC_PASSWORD="<restic_repository_password>"
export RESTIC_REPOSITORY="<restic_path_to_repository>"
recipient_mail="<error_mail_recipient>"
backupSuccessMessage="Local backup sucessfull."
backupErrorMessage="Local backup error."
logPath="/var/log/backup_restic.log"
exitCodes=()

# Insert path to save here
pathToSave=(
    "<path/to/save/1>"
    "<path/to/save/2>"
    "<path/to/save/...>"
)

for path in "${pathToSave[@]}"
do
    restic backup $path
    exitCodes+=($?)
done

if [[ " ${exitCodes[*]} " =~ 1 ]] || [[ " ${exitCodes[*]} " =~ 3 ]]
then
        echo `date` " - " $backupErrorMessage >> $logPath
        sendmail $recipient_mail < <file_to_send_by_email>
else
        echo `date` " - " $backupSuccessMessage >> $logPath
fi

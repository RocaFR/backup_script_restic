#!/bin/bash

export AWS_ACCESS_KEY_ID="<aws_acces_key>"
export AWS_SECRET_ACCESS_KEY="<aws_secret_key>"
export AWS_DEFAULT_REGION="<s3_region>"
export RESTIC_REPOSITORY="s3:s3.amazonaws.com/<s3_bucket_name>"
export RESTIC_PASSWORD="<restic_repository_password>"
recipient_mail="<error_mail_recipient>"
backupSuccessMessage="Remote backup sucessfull."
backupErrorMessage="Remote backup error."
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

if [[ " ${exitCodes[*]} " =~ 1 ]] || [[ " ${exitCodes[*]} " =~ 3 ]] ; then
        echo `date` " - " $backupErrorMessage >> $logPath
        sendmail $recipient_mail < <file_to_send_by_email>
else
        echo `date` " - " $backupSuccessMessage >> $logPath
fi

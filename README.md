# Restic backup scripts
Scripts to use when backing up with Restic.  
Specially usefull for cron jobs.

## What is Restic?
Restic is a modern backup program that can back up your files:
- from Linux, BSD, Mac and Windows
- to many different storage types, including self-hosted and online services
- easily, being a single executable that you can run without a server or complex setup
- effectively, only transferring the parts that actually changed in the files you back up
- securely, by careful use of cryptography in every part of the process
- verifiably, enabling you to make sure that your files can be restored when needed
- freely - restic is entirely free to use and completely open source

## Installation
Update repos
```bash
sudo apt update
```
Install Restic
```bash
sudo apt install restic -y
```
Instal ssmtp (to send error email)  
More information on [linuxhint.com](linuxhint.com)
```bash
sudo apt install ssmtp -y
```
Clone scripts
```bash
git clone https://github.com/RocaFR/backup_script_restic.git
```

## Vars
`AWS_ACCESS_KEY_ID` aws console > your name > security credentials  
`AWS_SECRET_ACCESS_KEY` see above  
`AWS_DEFAULT_REGION` aws console > s3 > buckets > aws region  
`RESTIC_REPOSITORY` aws console > s3 > buckets > bucket name  
`RESTIC_PASSWORD` password used when iniated restic repository  
`recipient_mail` A recipient who will be notified if any error occurs 

...WIP 🙃

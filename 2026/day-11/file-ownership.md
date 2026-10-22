Day 11 Challenge – File Ownership (chown & chgrp)

Files & Directories Created

The following files and directories were created during this challenge:

devopsFile.txt
devops-file.txt
team-notes.txt
project-config.yaml
app-logs/
Ownership Changes
File/Directory	Owner	Group	Command Used
devops-file.txt	tokyo	Existing group	sudo chown tokyo devops-file.txt
devops-file.txt	berlin	Existing group	sudo chown berlin devops-file.txt
team-notes.txt	Existing owner	heist-team	sudo chgrp heist-team team-notes.txt
project-config.yaml	professor	heist-team	sudo chown professor:heist-team project-config.yaml
app-logs/	berlin	heist-team	sudo chown berlin:heist-team app-logs

Note: Update the table if your actual command results differ. The original devopsFile.txt and the task's devops-file.txt are different filenames.

Commands Used

1. Create Files and Directories
touch devops-file.txt
touch team-notes.txt
touch project-config.yaml
mkdir -p app-logs

2. Change File Owner
sudo chown tokyo devops-file.txt
sudo chown berlin devops-file.txt

3. Change File Group
sudo groupadd heist-team
sudo chgrp heist-team team-notes.txt

If the group already exists, skip the groupadd command.

4. Change Owner and Group Together
sudo chown professor:heist-team project-config.yaml
sudo chown berlin:heist-team app-logs

5. Verify Ownership
ls -l devops-file.txt team-notes.txt project-config.yaml
ls -ld app-logs

What I Learned
The chown command changes the owner of a file or directory.
The chgrp command changes the group ownership of a file or directory.
The chown owner:group filename syntax allows the owner and group to be changed in one command.

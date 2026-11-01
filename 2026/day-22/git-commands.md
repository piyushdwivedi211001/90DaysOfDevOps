


Git Commands Cheat Sheet 📝

Git is a distributed version control system used to track changes in source code and collaborate with other developers.

This document contains commonly used Git commands organized by category, along with their purpose and practical examples.

1. Setup & Configuration ⚙️

These commands are used to configure Git and initialize or connect repositories.

Command	What it does	Example
git --version	Checks the installed Git version.	git --version
git config --global user.name	Sets the global Git username.	git config --global user.name "Piyush Dwivedi"
git config --global user.email	Sets the global Git email.	git config --global user.email "piyush@example.com"
git init	Initializes a new Git repository.	git init
git clone <url>	Copies an existing remote repository to your local machine.	git clone https://github.com/user/repo.git
git remote add origin <url>	Connects a local repository to a remote repository.	git remote add origin https://github.com/user/repo.git
git remote -v	Displays the URLs of connected remote repositories.	git remote -v
2. Basic Workflow 🔄

These commands are used in the everyday Git workflow to track, save, and upload changes.

Command	What it does	Example
git status	Shows the current state of the working directory.	git status
git add <file>	Adds a specific file to the staging area.	git add index.html
git add .	Adds all modified and new files to the staging area.	git add .
git commit -m "message"	Saves staged changes with a descriptive message.	git commit -m "Added login page"
git push origin main	Uploads local commits to the remote main branch.	git push origin main
git push -u origin main	Pushes changes and sets the upstream tracking branch.	git push -u origin main
git pull origin main	Fetches and integrates changes from the remote main branch.	git pull origin main
git branch -M main	Renames the current branch to main.	git branch -M main
3. Viewing Changes 👀

These commands help developers inspect repository status, modifications, and commit history.

Command	What it does	Example
git status	Displays modified, staged, and untracked files.	git status
git log	Displays the commit history.	git log
git log --oneline	Displays commit history in a compact format.	git log --oneline
git diff	Shows changes that are not yet staged.	git diff
git diff --staged	Shows changes added to the staging area.	git diff --staged
git branch	Lists all local branches.	git branch
git remote -v	Displays configured remote repository URLs.	git remote -v
4. My Git Workflow 🚀

The basic workflow I follow while working on projects:

# 1. Initialize repository
git init

# 2. Check repository status
git status

# 3. Stage changes
git add .

# 4. Commit changes
git commit -m "Initial commit"

# 5. Connect remote repository
git remote add origin <repository-url>

# 6. Push changes to GitHub
git push -u origin main
5. Key Learnings 📚
Git helps track changes in source code.
A repository stores project files and their version history.
The staging area allows us to select changes before committing.
A commit represents a saved snapshot of changes.
Remote repositories allow developers to collaborate.
GitHub provides cloud hosting for Git repositories.
Regular commits make project history easier to understand and manage.

Conclusion:

Learning Git commands is an important step in the DevOps journey. These commands help manage source code, maintain version history, and collaborate efficiently with other developers. 

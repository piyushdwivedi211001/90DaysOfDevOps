Git Branching 🌿

Git branching allows developers to work on different features independently without affecting the main codebase.

Command	What it does	Example
git branch	Lists all local branches.	git branch
git branch -a	Lists all local and remote branches.	git branch -a
git branch feature-1	Creates a new branch.	git branch feature-1
git switch feature-1	Switches to an existing branch.	git switch feature-1
git switch -c feature-2	Creates and switches to a new branch.	git switch -c feature-2
git checkout feature-1	Switches to an existing branch using the older checkout command.	git checkout feature-1
git checkout -b feature-3	Creates and switches to a new branch.	git checkout -b feature-3
git branch -d feature-2	Deletes a merged branch safely.	git branch -d feature-2
git branch -D feature-2	Force deletes a branch, even if it is unmerged.	git branch -D feature-2
git merge feature-1	Merges feature-1 into the current branch.	git merge feature-1
Git Branching Workflow
# List branches
git branch

# Create a new branch
git branch feature-1

# Switch to feature-1
git switch feature-1

# Create and switch to another branch
git switch -c feature-2

# Switch back to feature-1
git switch feature-1

# Stage and commit changes
git add .
git commit -m "Added feature-1 changes"

# Switch to the main branch
git switch main

# Delete an unused branch
git branch -d feature-2
Key Learnings
Branches allow developers to work independently.
The main branch contains the primary project code.
Feature branches help organize development work.
git switch is specifically designed for switching branches.
git checkout supports multiple Git operations.
Commits made on one branch do not automatically appear on another branch.
Branches can be deleted when they are no longer required.

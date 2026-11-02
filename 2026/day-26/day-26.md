Day 26 – GitHub CLI: Manage GitHub from Your Terminal
1. Introduction to GitHub CLI

GitHub CLI (gh) is a command-line tool that allows developers to interact with GitHub directly from their terminal without opening a web browser.

It helps developers manage repositories, issues, pull requests, GitHub Actions, releases, and other GitHub features.

Why GitHub CLI?
Manage GitHub repositories from the terminal.
Create and manage pull requests.
Create, view, and close issues.
Monitor GitHub Actions workflows.
Automate GitHub operations using scripts.
Improve developer productivity.
Git vs GitHub CLI
Git	GitHub CLI
Version control system	GitHub command-line tool
Manages source code history	Manages GitHub features
Works with local repositories	Interacts with GitHub
Commands: commit, push, pull	Commands: repo, issue, pr, run
2. Installation and Authentication
Installing GitHub CLI on Ubuntu/WSL

Update the package list:

sudo apt update

Install GitHub CLI:

sudo apt install gh -y

Verify installation:

gh --version
GitHub Authentication

Authenticate with GitHub:

gh auth login

Select the following options:

GitHub.com
HTTPS
Authenticate Git with GitHub credentials: Yes
Login with a web browser.

Follow the instructions and authorize GitHub CLI.

Verify Authentication
gh auth status

Check the active GitHub username:

gh api user --jq .login
Authentication Methods Supported by GitHub CLI
Browser Authentication: Uses a one-time code to authenticate through a web browser.
Personal Access Token (PAT): Uses a GitHub token for authentication.
Environment Variables: Uses GH_TOKEN or GITHUB_TOKEN, especially in automated workflows.
3. Working with GitHub Repositories

GitHub CLI provides the gh repo command to manage repositories.

Create a New Repository
gh repo create day26-gh-practice --public --add-readme --clone

Explanation:

repo create: Creates a new repository.
--public: Makes the repository public.
--add-readme: Creates a README file.
--clone: Clones the repository locally.
Clone an Existing Repository
gh repo clone OWNER/REPOSITORY

Example:

gh repo clone piyushdwivedi211001/90DaysOfDevOps
View Repository Details
gh repo view

View a specific repository:

gh repo view OWNER/REPOSITORY
List All Repositories
gh repo list

Display a limited number:

gh repo list --limit 10
Open Repository in Browser
gh repo view --web
Delete a Repository
gh repo delete OWNER/REPOSITORY

For confirmation-free deletion:

gh repo delete OWNER/REPOSITORY --yes

Important: Repository deletion is a destructive operation. Always verify the repository name and owner before deleting it.

4. Working with GitHub Issues

An Issue is used to report bugs, request features, discuss improvements, and track project tasks.

GitHub CLI provides the gh issue command.

Create an Issue
gh issue create --title "Fix login bug" --body "Login functionality needs improvement."

Create an issue with a label:

gh issue create --title "Fix login bug" --body "Login functionality needs improvement." --label bug
List Open Issues
gh issue list

List issues from a specific repository:

gh issue list --repo OWNER/REPOSITORY
View a Specific Issue
gh issue view ISSUE_NUMBER

Example:

gh issue view 1
Close an Issue
gh issue close ISSUE_NUMBER

Example:

gh issue close 1
How Can gh issue Be Used in Automation?

GitHub CLI can be used in shell scripts and automated workflows to:

Create issues automatically when errors occur.
List open issues for project tracking.
Close issues after a task is completed.
Generate reports about unresolved issues.
Integrate issue management with CI/CD workflows.
5. Working with Pull Requests

A Pull Request (PR) is a way to propose changes from one branch to another branch.

It allows team members to review code, discuss changes, run automated tests, and merge approved changes.

GitHub CLI provides the gh pr command.

Step 1: Create a Branch
git switch -c feature-update
Step 2: Make a Change
echo "Learning GitHub CLI" > github-cli.txt
Step 3: Stage and Commit
git add .
git commit -m "Add GitHub CLI learning file"
Step 4: Push the Branch
git push -u origin feature-update
Step 5: Create a Pull Request
gh pr create --fill

The --fill option automatically uses commit information to populate the PR title and description.

List Open Pull Requests
gh pr list

For a specific repository:

gh pr list --repo OWNER/REPOSITORY
View Pull Request Details
gh pr view PR_NUMBER

Check PR status:

gh pr checks PR_NUMBER

View reviewers:

gh pr view PR_NUMBER --json reviews

View review requests:

gh pr view PR_NUMBER --json reviewRequests
Merge a Pull Request
gh pr merge PR_NUMBER
Merge Methods Supported by gh pr merge
Merge Commit (--merge): Combines changes and creates a merge commit.
Squash Merge (--squash): Combines all commits into one commit.
Rebase Merge (--rebase): Replays commits on top of the base branch.

Examples:

gh pr merge 1 --merge
gh pr merge 1 --squash
gh pr merge 1 --rebase
How to Review Someone Else's Pull Request?

GitHub CLI allows developers to review PRs without opening a browser.

Useful commands:

gh pr list
gh pr view PR_NUMBER
gh pr diff PR_NUMBER
gh pr checkout PR_NUMBER
gh pr review PR_NUMBER --approve
gh pr review PR_NUMBER --request-changes --body "Please update the code."

These commands help developers inspect code, understand changes, test branches, and submit reviews.

6. GitHub Actions and Workflows

GitHub Actions is a CI/CD automation platform that allows developers to automate software development workflows.

It can automatically build, test, and deploy applications.

GitHub CLI provides two important commands:

gh run
gh workflow
List Workflow Runs
gh run list --repo OWNER/REPOSITORY
View a Specific Workflow Run
gh run view RUN_ID --repo OWNER/REPOSITORY
View Workflow Logs
gh run view RUN_ID --log --repo OWNER/REPOSITORY
List Available Workflows
gh workflow list --repo OWNER/REPOSITORY
View Workflow Details
gh workflow view WORKFLOW_NAME --repo OWNER/REPOSITORY
How Are gh run and gh workflow Useful in CI/CD?

gh run:

Checks workflow execution status.
Displays build and test results.
Helps troubleshoot failed deployments.
Allows developers to monitor automated jobs.

gh workflow:

Lists available workflows.
Displays workflow configuration information.
Allows developers to manage workflow execution.
Helps automate CI/CD processes.
7. Useful GitHub CLI Tricks
1. gh api

The gh api command allows developers to interact directly with the GitHub REST API and GraphQL API.

Example:

gh api user

Get your GitHub username:

gh api user --jq .login

It is useful for custom automation and retrieving GitHub data.

2. gh gist

GitHub Gists allow developers to share small code snippets and notes.

Create a Gist:

gh gist create example.txt

List Gists:

gh gist list

View a Gist:

gh gist view GIST_ID
3. gh release

GitHub Releases are used to publish software versions and distribute application files.

Create a release:

gh release create v1.0.0 --title "Version 1.0.0" --notes "First release"

List releases:

gh release list

View a release:

gh release view v1.0.0
4. gh alias

Aliases allow developers to create shortcuts for frequently used commands.

Create an alias:

gh alias set prs 'pr list'

Use the alias:

gh prs

List aliases:

gh alias list
5. gh search repos

Search for repositories directly from the terminal.

Example:

gh search repos docker

Search repositories with a specific programming language:

gh search repos --language python
8. Important GitHub CLI Commands Reference
Command	Description
gh --version	Check installed version
gh help	Display help
gh auth login	Authenticate with GitHub
gh auth status	Check authentication
gh repo create	Create a repository
gh repo clone	Clone a repository
gh repo list	List repositories
gh repo view	View repository details
gh issue create	Create an issue
gh issue list	List issues
gh issue view	View an issue
gh issue close	Close an issue
gh pr create	Create a pull request
gh pr list	List pull requests
gh pr view	View pull request details
gh pr diff	View PR changes
gh pr review	Review a pull request
gh pr merge	Merge a pull request
gh run list	List workflow runs
gh run view	View workflow run details
gh workflow list	List workflows
gh api	Access GitHub API
gh gist	Manage GitHub Gists
gh release	Manage releases
gh alias	Create command shortcuts
gh search repos	Search GitHub repositories
9. Real-World Industry Applications

GitHub CLI is useful in professional software development and DevOps environments.

Some important applications include:

Repository Management: Create, clone, and manage repositories from the terminal.
Team Collaboration: Create issues and manage pull requests.
Code Review: Inspect changes and review pull requests.
CI/CD Monitoring: Monitor GitHub Actions workflow executions.
Automation: Integrate GitHub operations into shell scripts.
API Integration: Retrieve GitHub information using API commands.
Release Management: Create and manage software releases.
10. Important Observations
GitHub CLI makes GitHub operations possible directly from the terminal.
It reduces the need to switch between the terminal and browser.
It supports repository, issue, and pull request management.
It can interact with GitHub Actions workflows.
It is useful for automating repetitive development tasks.
It improves productivity in collaborative software development.

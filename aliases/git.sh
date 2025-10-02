
# source /Users/amit/repos/amit-singh-7--bash--utils-main/git-aliases.sh

## Basic Git Aliases ##
alias gi='git init'
alias gib='git init --initial-branch=' # Initialize a new Git repository with branch
alias gibm='git init --initial-branch=main' # Initialize a new Git repository with main as the default branch

# Status, add, and commit in a single alias
alias gs='git status'
# iterate over each directory in the current location and check the Git status
alias gsa='for d in */; do (cd "$d" && [ -d .git ] && echo "\n=== $d ===" && git status); done'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gac='git add . && git commit -am' # Add and commit with a single command

# Pull, fetch, and push
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsf='git push --force-with-lease'
alias gfa='git fetch --all --prune'

# Branching
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'  # Force delete branch
alias gco='git checkout'
alias gcob='git checkout -b' # Create and switch to a new branch

# Stashing
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gstc='git stash clear'

# Merging and Rebasing
alias gm='git merge'
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias girb='git rebase -i HEAD~' # Interactive rebase for last n commits

# Logging
alias gl='git log --oneline --graph --decorate'
alias gls='git log --stat'
# from HEAD@{push} up to current HEAD” (i.e., the new commits since the last push)
alias glslocal='git log --stat HEAD@{push}..HEAD'
alias gld='git log --decorate --oneline --graph --all'
alias gplog='git log -1 HEAD' # Show the most recent commit

# Diff and Show
alias gd='git diff'
alias gds='git diff --staged'
alias gdc='git diff --cached'
alias gsh='git show'

# Git reset
alias gr='git reset'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gru='git reset HEAD~1'  # Undo the last commit

## Advanced Git Aliases ##
# Show the current branch
alias gcbn='git rev-parse --abbrev-ref HEAD'

# Get the current branch name
alias gbr='git symbolic-ref --short HEAD'

# Create a new tag
alias gtag='git tag'

# Show all tracked files
alias gtracked='git ls-tree --full-tree -r HEAD'

# Show all untracked files
alias guntracked='git ls-files --others --exclude-standard'

# Remove local branches that are no longer on remote
alias gb-clean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Cleanup local git repository (remove all merged branches)
alias gclean='git branch --merged | grep -v master | grep -v "\*" | xargs -n 1 git branch -d'

# List all branches sorted by most recent commit
alias gb-latest='git for-each-ref --sort=-committerdate refs/heads/'

# Check if there are unpushed commits
alias gcheck='git log origin/$(git symbolic-ref --short HEAD)..HEAD'

# Show commits that will be pushed
alias gwillpush='git log --stat @{u}..HEAD'

# Create a Git alias to squash your commits into one
alias gfixup='git commit --fixup'

# Git alias to automatically squash fixup commits when rebasing
alias gsquash='git rebase -i --autosquash'

# Quickly discard all uncommitted changes
alias gdiscard='git checkout . && git clean -fd'

# See the last commit's hash
alias glast='git rev-parse HEAD'

# List all tags sorted by date
alias gtags='git for-each-ref --sort=-taggerdate --format="%(refname:short) %(taggerdate)" refs/tags'

# Delete a remote branch
alias gdel-remote='git push origin --delete'

# See what will be pushed (local commits that haven't been pushed yet)
alias gpending='git log --branches --not --remotes --simplify-by-decoration --decorate --oneline'

# Clear all local changes and reset everything to HEAD
alias ghard-reset='git reset --hard && git clean -fd'

## Helpful Shortcuts for Daily Workflow ##
# Clone a repository
# alias gcl="bash clone.sh"

# Alias for viewing only the last n commits
alias gl5='git log -n 5 --oneline'

# Undo the last commit but keep the changes
alias gundo='git reset --soft HEAD~1'

# Show all remotes
alias grv='git remote -v'

# Fetch all branches and prune removed ones
alias gfp='git fetch --all --prune'

# Grep for a string in the codebase
alias gg='git grep'

# Show a summary of file changes in the last commit
alias gsummary='git show --stat'

# Cherry-pick a commit
alias gch='git cherry-pick'

# Create an archive of the current branch
alias garchive='git archive --format=zip HEAD > latest.zip'

# Show git ignored files
alias gignored='git ls-files --others -i --exclude-standard'

# Check if a commit exists in another branch
alias gbranch-contains='git branch --contains'

# Show remote branches
alias grmb='git branch -r'

# Quick clone from GitHub with SSH
alias gclone-ssh='git clone git@github.com:'

# View staged and unstaged changes with file names
alias gfiles='git status --porcelain'

# Set Git user profile for work
#alias #git_workprofile="git config user.email 'amit.singh@client.domain'"

# Display tags sorted by version and creation date with commit hash and tag name
alias git_tagv="git --no-pager tag --sort=v:refname --sort=creatordate --format='%(objectname) %(refname:strip=2)'"

# Get the latest commit hash (HEAD)
alias git_lv="git rev-parse HEAD"

# Display the latest tag sorted by version and creation date
alias git_ltag="git tag --sort=v:refname --sort=creatordate | tail -n1"

# Display the latest tag with commit hash and tag name
alias git_ltagv="git_tagv | tail -n1"

# Generate the next major version tag
alias git_itag="(git_ltag || echo 0.0.0) | awk '{split(substr(\$0, 2), a, \".\"); printf \"v%d.%d.%d\", a[1]+1, 0, 0}'"

# Generate the next minor version tag
alias git_iitag="(git_ltag || echo 0.0.0) | awk '{split(substr(\$0, 2), a, \".\"); printf \"v%d.%d.%d\", a[1], a[2]+1, 0}'"

# Generate the next patch version tag
alias git_iiitag="(git_ltag || echo 0.0.0) | awk '{split(substr(\$0, 2), a, \".\"); printf \"v%d.%d.%d\", a[1], a[2], a[3]+1}'"

# Create the next major version tag
alias git_aitag="git tag \$(git_itag)"

# Create the next minor version tag
alias git_aiitag="git tag \$(git_iitag)"

# Create the next patch version tag
alias git_aiiitag="git tag \$(git_iiitag)"

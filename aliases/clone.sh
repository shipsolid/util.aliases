#!/bin/bash

# Usage message
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <account-type: p|w> <repository-url> [branch]"
    echo "Account type should be 'p' for personal or 'w' for work."
    exit 1
fi

ACCOUNT_TYPE=$1
URL=$2
BRANCH=$3

# Function to convert HTTPS URL to SSH URL
convert_to_ssh() {
  local https_url=$1
  local account_type=$2

  if [[ $https_url =~ https://github.com/([^/]+)/([^/]+)\.git ]]; then
    local username=${BASH_REMATCH[1]}
    local repository=${BASH_REMATCH[2]}

    case "$account_type" in
      p)
        echo "git@github.com-gmail:${username}/${repository}.git"
        ;;
      w)
        echo "git@github.com-work:${username}/${repository}.git"
        ;;
      *)
        echo "Invalid account type. Use 'p' for personal or 'w' for work."
        exit 1
        ;;
    esac
  else
    echo "Invalid GitHub HTTPS URL"
    exit 1
  fi
}

# Convert to SSH URL
SSH_URL=$(convert_to_ssh "$URL" "$ACCOUNT_TYPE")

# Determine default branch if not provided
tmp=false
if [ -z "$BRANCH" ]; then
    echo "Branch not provided. Determining default branch..."
    git clone --depth 1 "$SSH_URL" temp_repo_for_branch_check > /dev/null 2>&1

    cd temp_repo_for_branch_check || exit
    BRANCH=$(git symbolic-ref --short HEAD)
    cd ..
    rm -rf temp_repo_for_branch_check

    echo "Using default branch: $BRANCH"
    tmp=true
fi

# Extract username and repo name
USERNAME=$(echo "$URL" | awk -F'/' '{print $(NF-1)}')
REPO_WITH_GIT=$(basename "$URL")
REPO_NAME="${REPO_WITH_GIT%.git}"
CLONE_DIR="${USERNAME}--${REPO_NAME}-${BRANCH}"

# Clone repo
if [ "$tmp" = true ]; then
    echo "Cloning full repository into $CLONE_DIR"
    git clone "$SSH_URL" "$CLONE_DIR"
else
    echo "Cloning branch '$BRANCH' with depth 1 into $CLONE_DIR"
    git clone --depth 1 -b "$BRANCH" "$SSH_URL" "$CLONE_DIR"
fi

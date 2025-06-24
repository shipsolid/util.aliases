## Workflow Operations

# List all workflows
alias ghwl='gh workflow list'

# View details of a specific workflow (usage: gh-wf-view workflow.yml)
alias ghwv='gh workflow view'

# Trigger a workflow manually (usage: gh-wf-run workflow.yml)
alias ghwr='gh workflow run'

# Trigger a workflow on a specific branch (usage: gh-wf-run-main workflow.yml)
alias ghwrm='gh workflow run --ref main'

# Enable a workflow
alias ghwe='gh workflow enable'

# Disable a workflow
alias ghwd='gh workflow disable'

## Triggering & Managing Runs

# List recent runs
alias ghrl='gh run list'

# View a run by ID (usage: gh-run-view 123456789)
alias ghrv='gh run view'

# View latest run in browser
alias ghrvw='gh run view --web'

# Watch the latest run live in terminal
alias ghrw='gh run watch'

# Rerun a failed or completed run (usage: gh-run-rerun 123456789)
alias ghrr='gh run rerun'

# Cancel a running workflow (usage: gh-run-cancel 123456789)
alias ghrc='gh run cancel'

## Artifacts

# Download all artifacts from a run (usage: gh-run-artifact 123456789)
alias ghrd='gh run download'

# Download a specific artifact (usage: gh-run-artifact-name my-artifact)
alias ghrdn='gh run download --name'

# List aliases defined in gh CLI
alias ghal='gh alias list'

# Set a quick alias for rerun latest failed run (example alias using jq)
alias ghrlf='gh run list --limit 1 --json databaseId,status,conclusion --jq ".[0].databaseId" | xargs gh run rerun'

# Function: view the latest run (by date)
ghfrl() {
  gh run list --limit 1 --json databaseId --jq '.[0].databaseId' | xargs gh run view
}

# View in browser
ghfrlweb() {
  gh run list --limit 1 --json databaseId --jq '.[0].databaseId' | xargs gh run view --web
}

# Stream logs live
ghfrlwa() {
  gh run list --limit 1 --json databaseId --jq '.[0].databaseId' | xargs gh run watch
}

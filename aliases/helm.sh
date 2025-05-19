## Helm basic commands
# Shorter alias for helm
alias h='helm'
# retrieve information about an installed release (an active deployment of a chart).
alias hg='helm get'
# download all information for a named release
alias hga='helm get all'
# download all hooks for a named release
alias hgh='helm get hooks'
# download the manifest for a named release
alias hgm='helm get manifest'
# This command fetches metadata for a given release
alias hgmd='helm get metadata'
# download the notes for a named release
alias hgn='helm get notes'
# download the values file for a named release
alias hgv='helm get values'

# display information from a Helm chart (not a release). This includes default values, metadata, and readmes provided by the chart itself.
alias hsh='helm show'
# show all information of the chart
alias hsha='helm show all'
# show the chart's definition
alias hshch='helm show chart'
# show the chart's CRDs
alias hshcr='helm show crds'
# show the chart's README
alias hshr='helm show readme'
# show the chart's values
alias hshv='helm show values'

# Get Helm release manifest, useful for quick inspection
alias hmanifest='function _hmanifest() { helm get manifest "$1" -n "${2:-default}"; }; _hmanifest'

# Install a new release
alias hi='helm install'
# Debug a chart before installing
alias hidry='helm install --dry-run --debug'

# Upgrade an existing release
alias hu='helm upgrade'

# Dry run an upgrade with debug info
alias hudd='helm upgrade --dry-run --debug'

# Install or upgrade a release with specified values file
alias huiv="helm upgrade --install --values"

# List all releases in the current namespace
alias hl='helm list'

alias hls='helm list --short'

# List all releases across namespaces
alias hla='helm list --all-namespaces'

# List all the releases in a specific namespace
alias hln='helm list --namespace'

alias hlsn='helm list --namespace --short'

# List all the releases in a specific output format
alias hlo='helm list --output'

# Apply a filter to the list of releases using regular (Pearl compatible) expressions
alias hlf='helm list --filter'

# List releases by namespace with specific status (default: deployed)
alias hlist='function _hlist() { helm list -n "${1:-default}" --filter "${2:-}" --deployed; }; _hlist'

alias hrb='helm rollback'

# Helm Rollback with dynamic version selection
alias hroll='function _hroll() { helm rollback "$1" "${2:-1}" -n "${3:-default}"; }; _hroll'

# Delete a release
alias hdel='helm delete'
alias huni='helm uninstall'

# Helm repo commands
alias hr='helm repo'
# Update all repositories
alias hru='helm repo update'
alias hrl='helm repo list'
# Add a repository
alias hra='helm repo add'
# Remove a repository
alias hrr='helm repo remove'

## Helm chart management
# Create a new chart
alias hc='helm create'

# Helm Repo Search with a keyword for finding charts in repositories
alias hsearch='function _hsearch() { helm search repo "$1"; }; _hsearch'

alias hsc='helm search chart'
alias hsr='helm search repo'

# Lint charts
alias hlint='helm lint'

# Lint and Template Check in one step for local testing
alias hlt='function _hlt() { helm lint "$1" && helm template "$1" -f "${2:-values.yaml}"; }; _hlt'

# Package a chart directory into a chart archive
alias hp='helm package'
# Install chart dependencies
alias hdu='helm dependency update'
#Display a list of a chart’s dependencies
alias hdl='helm dependency list'

# Helm debugging
alias hdbg='helm debug'
alias hv='helm version'

# Helm template rendering
alias htpl='helm template' # Render templates locally
alias htplf='helm template -f'  # Render templates with values file

# Helm history and status
alias hh='helm history'

# Show Release History with optional limit
alias hhistory='function _hhistory() { helm history "$1" -n "${2:-default}" --max "${3:-5}"; }; _hhistory'

# Check the status of a release
alias hst='helm status'

# Helm Release Status with simple output (useful for monitoring)
alias hstatus='function _hstatus() { helm status "$1" -n "${2:-default}" --output table; }; _hstatus'

# Helm Testing
# Test a release
alias htest='helm test'

## Helm Advanced Commands
# Dynamic Helm Install with custom namespace and values file
#alias #hi='function _hi() { helm install "$1" "$2" -n "${3:-default}" -f "${4:-values.yaml}"; }; _hi'

# Dynamic Helm Upgrade with dry-run option and debug
#alias #hu='function _hu() { helm upgrade "$1" "$2" -n "${3:-default}" ${4:---dry-run --debug} -f "${5:-values.yaml}"; }; _hu'

# Clean Helm uninstall with custom namespace and force option
#alias #hd='function _hd() { helm uninstall "$1" -n "${2:-default}" --force; }; _hd'

# Helm Delete all releases in a namespace (use cautiously)
alias hdeleteall='function _hdeleteall() { helm list -n "$1" -q | xargs -r -L1 -I {} helm uninstall {} -n "$1"; }; _hdeleteall'

# Helm Diff for comparing releases (requires helm-diff plugin)
alias hdiff='function _hdiff() { helm diff upgrade "$1" "$2" -n "${3:-default}" -f "${4:-values.yaml}"; }; _hdiff'

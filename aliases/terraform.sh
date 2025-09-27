###############################################
# Terraform – Aliases & Usage Reference (Generic)
# Place in your shell profile (~/.bashrc, ~/.zshrc) and `source` it.
###############################################

## Installation / Version
alias tf_install='brew install terraform'  # Install Terraform (macOS/Homebrew)
alias tfver='terraform version'              # Show Terraform version
alias tfh='terraform -help'                # Show Terraform help/usage

## Init / Workspace
alias tfi='terraform init'               # Initialize working directory
alias tfiu='terraform init -upgrade'     # Re-init with provider upgrades
alias tfw='terraform workspace list'     # List workspaces
alias tfws='terraform workspace select'  # Usage: tfws <WORKSPACE_NAME>
alias tfwn='terraform workspace new'     # Usage: tfwn <WORKSPACE_NAME>

## Plan / Apply / Destroy
alias tfp='terraform plan'                    # Show execution plan
alias tfpout='terraform plan -out=main.tfplan'     # Plan and save to file
alias tfa='terraform apply'                   # Apply changes interactively
alias tfaa='terraform apply -auto-approve'    # Apply without prompt
alias tfaout='terraform apply main.tfplan'         # Apply from saved plan
alias tfd='terraform destroy'                 # Destroy interactively
alias tfda='terraform destroy -auto-approve'  # Destroy without prompt

## Validation / Format / Lint
alias tfv='terraform validate'               # Validate configuration
alias tff='terraform fmt -recursive'           # Format code recursively
alias tffch='terraform fmt -check -recursive'  # Check formatting without modifying

## State Management
alias tfs='terraform state list'   # List resources in state
alias tfss='terraform state show'  # Usage: tfss <RESOURCE_ADDRESS>
alias tfsmv='terraform state mv'   # Usage: tfsmv <SOURCE> <DEST>
alias tfsrm='terraform state rm'   # Usage: tfsrm <RESOURCE_ADDRESS>

## Outputs / Graph
alias tfo='terraform output'                          # Show outputs
alias tfog='terraform graph | dot -Tpng > graph.png'  # Generate resource graph (needs graphviz)

## Misc
alias tfdiff='terraform plan -detailed-exitcode'             # Diff mode (0=no change, 2=change, 1=error)
alias tfclean='rm -rf .terraform main.tfplan terraform.tfstate*'  # Remove local state & plan files (careful!)

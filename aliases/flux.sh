# Basic Flux commands
# List all Flux resources in the current Namespace; -A; -n zone-products
alias fga='flux get all'
# Get Flux alerts
alias fgal='flux get alerts'
# Get Flux alert providers
alias fgalp='flux get alert-providers'
# Get Flux Helm releases
alias fghr='flux get helmreleases'
# Get Flux images
alias fgi='flux get images'
# Get all Flux images
alias fgia='flux get images all'
# Get Flux image policies
alias fgip='flux get images policy'
# Get Flux image repositories
alias fgir='flux get images repository'
# Get Flux image updates
alias fgiu='flux get images update'
# Get Flux kustomizations
alias fgk='flux get kustomizations'
# Get Flux receivers
alias fgr='flux get receivers'
# Get Flux sources
alias fgs='flux get sources'
# Get all Flux sources
alias fgsa='flux get sources all'
# Get Flux bucket sources
alias fgsb='flux get sources bucket'
# Get Flux chart sources
alias fgsc='flux get sources chart'
# Get Flux git sources
alias fgsg='flux get sources git'
# Get Flux helm sources
alias fgsh='flux get sources helm'
# Get Flux OCI sources
alias fgso='flux get sources oci'

# Reconcile Flux resources
alias frec='flux reconcile'
# Reconcile Flux alerts
alias frecal='flux reconcile alert'
# Reconcile Flux alert providers
alias frecalp='flux reconcile alert-provider'
# Reconcile Flux Helm releases
alias frechr='flux reconcile helmrelease'
# Reconcile Helm releases with source
alias frechrws='flux reconcile helmrelease --with-source'
# Reconcile Flux images
alias freci='flux reconcile image'
# Reconcile Flux image repositories
alias frecir='flux reconcile image repository'
# Reconcile Flux image updates
alias freciu='flux reconcile image update'
# Reconcile Flux kustomizations
alias freck='flux reconcile kustomization'
# Reconcile kustomizations with source
alias freckws='flux reconcile kustomization --with-source'
# Reconcile Flux receivers
alias frecr='flux reconcile receiver'
# Reconcile Flux sources
alias frecs='flux reconcile source'
# Reconcile Flux bucket sources
alias frecsb='flux reconcile source bucket'
# Reconcile Flux git sources
alias frecsg='flux reconcile source git'
# Reconcile Flux helm sources
alias frecsh='flux reconcile source helm'
# Reconcile Flux OCI sources
alias frecso='flux reconcile source oci'

# Update all Helm releases
alias flux-update-helm-releases='flux reconcile helmrelease --all --with-source'
# Reconcile all kustomizations
alias flux-reconcile-all='flux reconcile kustomization --all --with-source'
# Update all image policies
alias flux-update-image-policies='flux reconcile image repository --all'
# Update all image policies with source
alias flux-image-update='flux reconcile image policy --all --with-source'
# Reapply flux-system kustomization
alias flux-reapply='flux reconcile kustomization flux-system --with-source'
# Update all sources and kustomizations
alias flux-update-all='flux reconcile source git --all --with-source && flux reconcile kustomization --all --with-source'

# Suspend Flux resources
alias fsus='flux suspend'
# Suspend Flux alerts
alias fsusal='flux suspend alert'
# Suspend Flux alert providers
alias fsusalp='flux suspend alert-provider'
# Suspend Helm releases
alias fsushr='flux suspend helmrelease'
# Suspend Helm releases with source
alias fsushrws='flux suspend helmrelease --with-source'
# Suspend Flux images
alias fsusi='flux suspend image'
# Suspend Flux image repositories
alias fsusir='flux suspend image repository'
# Suspend Flux image updates
alias fsusiu='flux suspend image update'
# Suspend Flux kustomizations
alias fsusk='flux suspend kustomization'
# Suspend kustomizations with source
alias fsuskws='flux suspend kustomization --with-source'
# Suspend Flux receivers
alias fsusr='flux suspend receiver'
# Suspend Flux sources
alias fsuss='flux suspend source'
# Suspend Flux bucket sources
alias fsussb='flux suspend source bucket'
# Suspend Flux git sources
alias fsussg='flux suspend source git'
# Suspend Flux helm sources
alias fsussh='flux suspend source helm'
# Suspend Flux OCI sources
alias fsusso='flux suspend source oci'

# Suspend flux-system kustomization
alias flux-suspend='flux suspend kustomization flux-system'

# Resume Flux resources
alias fres='flux resume'
# Resume Flux alerts
alias fresal='flux resume alert'
# Resume Flux alert providers
alias fresalp='flux resume alert-provider'
# Resume Helm releases
alias freshr='flux resume helmrelease'
# Resume Helm releases with source
alias freshrws='flux resume helmrelease --with-source'
# Resume Flux images
alias fresi='flux resume image'
# Resume Flux image repositories
alias fresir='flux resume image repository'
# Resume Flux image updates
alias fresiu='flux resume image update'
# Resume Flux kustomizations
alias fresk='flux resume kustomization'
# Resume kustomizations with source
alias freskws='flux resume kustomization --with-source'
# Resume Flux receivers
alias fresr='flux resume receiver'
# Resume Flux sources
alias fress='flux resume source'
# Resume Flux bucket sources
alias fressb='flux resume source bucket'
# Resume Flux git sources
alias fressg='flux resume source git'
# Resume Flux helm sources
alias fressh='flux resume source helm'
# Resume Flux OCI sources
alias fresso='flux resume source oci'

# Resume flux-system kustomization
alias flux-resume='flux resume kustomization flux-system'

# delete Flux resources
alias fdel='flux delete'
# delete Flux alerts
alias fdelal='flux delete alert'
# delete Flux alert providers
alias fdelalp='flux delete alert-provider'
# delete Flux Helm releases
alias fdelhr='flux delete helmrelease'
# delete Flux images
alias fdeli='flux delete image'
# delete Flux image policy
alias fdelip='flux delete image policy'
# delete Flux image repositories
alias fdelir='flux delete image repository'
# delete Flux image updates
alias fdeliu='flux delete image update'
# delete Flux kustomizations
alias fdelk='flux delete kustomization'
# delete Flux receivers
alias fdelr='flux delete receiver'
# delete Flux sources
alias fdels='flux delete source'
# delete Flux bucket sources
alias fdelsb='flux delete source bucket'
# delete Flux git sources
alias fdelsg='flux delete source git'
# delete Flux helm sources
alias fdelsh='flux delete source helm'
# delete Flux OCI sources
alias fdelso='flux delete source oci'

# Pre-check Flux installation
alias flux-check='flux check --pre'
# Create a Flux git source
alias flux-create-source='flux create source git'

# Rollback flux-system kustomization
alias flux-rollback='flux undo kustomization flux-system'
# Tail Flux logs
alias flux-logs='kubectl logs -n flux-system -l app.kubernetes.io/name=source-controller -f'
# Get Flux events
alias flux-events='kubectl get events -n flux-system --sort-by=.metadata.creationTimestamp'

# Create a Flux Helm release
alias flux-create-helm-release='flux create helmrelease'

# Get Flux version
alias fv='flux --version'
# Export flux-system kustomization to YAML
alias flux-export='flux export kustomization flux-system > flux-system.yaml'

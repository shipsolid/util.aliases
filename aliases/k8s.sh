
# source /Users/amit/repos/amit-singh-7--bash--utils-main/k8s-aliases.sh

# k8s Aliases
if command -v kubecolor >/dev/null 2>&1; then
    alias k='kubecolor'
else
    alias k='kubectl'
fi

# k8s - GET
alias kg='k get'
alias kga='k get all'
alias kgans='k api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found'
alias kgcj='k get cronjobs'
alias kgcm='k get configmaps'
alias kgcr='k get clusterroles'
alias kgcrb='k get clusterrolebindings'
alias kgd='k get deployments'
alias kgds='k get daemonsets'
alias kge='k get endpoints'
alias kgev='k get events --sort-by=.lastTimestamp'
alias kgi='k get ingresses'
alias kgj='k get jobs'
alias kgl='k get limitranges'
alias kgn='k get nodes'
alias kgns='k get namespaces'
alias kgp='k get pods'
alias kgpl='k get pods --show-labels'
alias kgpsc='k get storageclasses'
alias kgpv='k get persistentvolumes'
alias kgpvc='k get persistentvolumeclaims'
alias kgpw='k get pods --watch'
alias kgq='k get resourcequotas'
alias kgr='k get roles'
alias kgrb='k get rolebindings'
alias kgrs='k get replicasets'
alias kgs='k get services'
alias kgsa='k get serviceaccounts'
alias kgsec='k get secrets'
alias kgss='k get statefulsets'
alias kgnp='k get networkpolicies'
alias kghpa='k get horizontalpodautoscalers'

# k8s - DESCRIBE
alias kd='k describe'
alias kdcj='k describe cronjobs'
alias kdcm='k describe configmaps'
alias kdcr='k describe clusterroles'
alias kdcrb='k describe clusterrolebindings'
alias kdd='k describe deployments'
alias kdds='k describe daemonsets'
alias kde='k describe endpoints'
alias kdi='k describe ingresses'
alias kdj='k describe jobs'
alias kdl='k describe limitranges'
alias kdn='k describe nodes'
alias kdns='k describe namespaces'
alias kdp='k describe pods'
alias kdpsc='k describe storageclasses'
alias kdpv='k describe persistentvolumes'
alias kdpvc='k describe persistentvolumeclaims'
alias kdq='k describe resourcequotas'
alias kdr='k describe roles'
alias kdrb='k describe rolebindings'
alias kdrs='k describe replicasets'
alias kds='k describe services'
alias kdsa='k describe serviceaccounts'
alias kdsec='k describe secrets'
alias kdss='k describe statefulsets'
alias kdnp='k describe networkpolicies'
alias kdhpa='k describe horizontalpodautoscalers'

# k8s - DELETE
alias kdel='k delete'
alias kdelf='k delete -f'
alias kdelcj='k delete cronjobs'
alias kdelcm='k delete configmaps'
alias kdelcr='k delete clusterroles'
alias kdelcrb='k delete clusterrolebindings'
alias kdeld='k delete deployments'
alias kdelds='k delete daemonsets'
alias kdele='k delete endpoints'
alias kdeli='k delete ingresses'
alias kdelj='k delete jobs'
alias kdell='k delete limitranges'
alias kdeln='k delete nodes'
alias kdelns='k delete namespaces'
alias kdelp='k delete pods'
alias kdelpsc='k delete storageclasses'
alias kdelpv='k delete persistentvolumes'
alias kdelpvc='k delete persistentvolumeclaims'
alias kdelq='k delete resourcequotas'
alias kdelr='k delete roles'
alias kdelrb='k delete rolebindings'
alias kdelrs='k delete replicasets'
alias kdels='k delete services'
alias kdelsa='k delete serviceaccounts'
alias kdelsec='k delete secrets'
alias kdelss='k delete statefulsets'
alias kdelnp='k delete networkpolicies'
alias kdelhpa='k delete horizontalpodautoscalers'
alias kdelfin='k patch -p "{\"metadata\":{\"finalizers\":null}}" --type=merge'

# k8s - EDIT
alias ke='k edit'
alias kecj='k edit cronjobs'
alias kecm='k edit configmaps'
alias kecr='k edit clusterroles'
alias kecrb='k edit clusterrolebindings'
alias ked='k edit deployments'
alias keds='k edit daemonsets'
alias kee='k edit endpoints'
alias kei='k edit ingresses'
alias kej='k edit jobs'
alias kel='k edit limitranges'
alias ken='k edit nodes'
alias kens='k edit namespaces'
alias kep='k edit pods'
alias kepsc='k edit storageclasses'
alias kepv='k edit persistentvolumes'
alias kepvc='k edit persistentvolumeclaims'
alias keq='k edit resourcequotas'
alias ker='k edit roles'
alias kerb='k edit rolebindings'
alias kers='k edit replicasets'
alias kes='k edit services'
alias kesa='k edit serviceaccounts'
alias kesec='k edit secrets'
alias kess='k edit statefulsets'
alias kenp='k edit networkpolicies'
alias kehpa='k edit horizontalpodautoscalers'

# k8s - Other
alias kcg='k config get-contexts'
alias kcu='k config use-context'
alias kcc='k config current-context'
alias kcs='k config set-context --current'
alias kcsns='k config set-context --current --namespace '
alias kns='fn(){ k get ns --field-selector "metadata.name=$1" --ignore-not-found --no-headers | grep -E "^.+$" 1>/dev/null && k config set-context --current --namespace $1 || echo "No namespace \"$1\" found." && return 1;  unset -f fn; }; fn'

# kubectl port-forward [resource_type]/[resource_name] [local_port]:[pod_port]
alias kp='k port-forward'
alias kv='k version --short'
alias kar='k api-resources --sort-by name'
alias kac='k auth can-i'
alias kex='k expose'

# kubectl scale --replicas=5 deployment/my-app; kubectl scale --current-replicas=3 --replicas=5 deployment/my-app
alias ks='k scale'

alias ktn='k top node'
alias ktp='k top pod'

alias kexpl='k explain'
alias kexplr='k explain --recursive=true'

# kubectl rollout history deployment/frontend
alias krh='k rollout history'
# kubectl rollout undo deployment/frontend --to-revision=2
alias kru='k rollout undo'
# kubectl rollout status -w deployment/frontend
alias krs='k rollout status'
# kubectl rollout restart deployment/frontend
alias krr='k rollout restart'

# kubectl run <pod-name> --image=<image-name> --restart=Never; kubectl run -i --tty busybox --image=busybox:1.28 -- sh
alias kr='k run'
# kubectl run <pod-name> --image=<image-name> --restart=Never --dry-run=client
alias krdrc='k run --dry-run=client'
# kubectl run <pod-name> --image=<image-name> --restart=Never --dry-run=client -o yaml
alias krdrcy='k run --dry-run=client -o yaml'

alias kc='k create'
alias kcd='k create deployment'
alias kcdrc='k create --dry-run=client'
alias kcdrcy='k create --dry-run=client -o yaml'

alias kx='k exec'
alias kxi='k exec -ti'

alias kl='k logs'
alias klf='k logs -f'

alias ka='k apply'
alias kaf='k apply -f'

# alias kshell='k shell'

alias kexc='export KUBECONFIG=~/.kube/config && echo $KUBECONFIG'
alias kexl='export KUBECONFIG=~/.kube/local && echo $KUBECONFIG'

# k8s - yq & jq
alias cleanyaml="yq e '"'del(.. | select(tag == "!!map") | (.status, .creationTimestamp, .generation, .selfLink, .uid, .resourceVersion, .managedFields, ."kubectl.kubernetes.io/last-applied-configuration"))'"' -"
alias cleanjson="gojq '"'del(.. | select(. == "" or . == null)) | walk(if type == "object" then del(.status, .creationTimestamp, .generation, .selfLink, .uid, .resourceVersion, .managedFields, ."kubectl.kubernetes.io/last-applied-configuration") else . end) | del(.. | select(. == {}))'"'"
alias cy='cleanyaml'
alias cyy="cleanyaml | yq e '"'del(.. | select((. == "" and tag == "!!str") or tag == "!!null")) | del(... | select(tag == "!!map" and length == 0))'"' -"
alias cj='cleanjson'


# k8s - GET - YAML
alias kgy='kgy_f() { k get -o yaml "$@" | cy; }; kgy_f'
alias kgyy='kgyy_f() { k get -o yaml "$@" | yq e -; }; kgyy_f'

alias kgpy='kgpy_f() { k get pods -o yaml "$@" | cy; }; kgpy_f'
alias kgpyy='kgpyy_f() { k get pods -o yaml "$@" | yq e -; }; kgpyy_f'

alias kgjy='kgjy_f() { k get jobs -o yaml "$@" | cy; }; kgjy_f'
alias kgjyy='kgjyy_f() { k get jobs -o yaml "$@" | yq e -; }; kgjyy_f'

alias kgsy='kgsy_f() { k get services -o yaml "$@" | cy; }; kgsy_f'
alias kgsyy='kgsyy_f() { k get services -o yaml "$@" | yq e -; }; kgsyy_f'

alias kgdy='kgdy_f() { k get deployments -o yaml "$@" | cy; }; kgdy_f'
alias kgdyy='kgdyy_f() { k get deployments -o yaml "$@" | yq e -; }; kgdyy_f'

alias kgny='kgny_f() { k get nodes -o yaml "$@" | cy; }; kgny_f'
alias kgnyy='kgnyy_f() { k get nodes -o yaml "$@" | yq e -; }; kgnyy_f'

alias kgnsy='kgnsy_f() { k get namespaces -o yaml "$@" | cy; }; kgnsy_f'
alias kgnsyy='kgnsyy_f() { k get namespaces -o yaml "$@" | yq e -; }; kgnsyy_f'

alias kgiy='kgiy_f() { k get ingresses -o yaml "$@" | cy; }; kgiy_f'
alias kgiyy='kgiyy_f() { k get ingresses -o yaml "$@" | yq e -; }; kgiyy_f'

alias kgsecy='kgsecy_f() { k get secrets -o yaml "$@" | cy; }; kgsecy_f'
alias kgsecyy='kgsecyy_f() { k get secrets -o yaml "$@" | yq e -; }; kgsecyy_f'

# You'll need to be logged in the bx/ibmcloud cli
# this gets the list of clusters
# alias kclusters='ibmcloud cs clusters'

# this downloads the kubectl config and applies them in current session
# usage would be "kcluster <CLUSTER_NAME>"
#kcluster () { $(ibmcloud cs cluster-config $@ | grep export) }

# k8s local Aliases
alias kminikube='export KUBECONFIG=~/.kube/local-minikube && echo $KUBECONFIG && kubectl config use-context minikube && echo "Cluster set to -- local-minikube"'
alias kk3d='export KUBECONFIG=~/.kube/local-k3d && echo $KUBECONFIG && kubectl config use-context k3d-cluster1 && echo "Cluster set to -- local-k3d"'

# k8s cluster Aliases
alias khost='export KUBECONFIG=~/.kube/config-host && echo $KUBECONFIG && kubectl config use-context host && az account set --subscription subscription_name && echo "Cluster set to -- AKS-Dev-WestEurope"'
alias kahost='export KUBECONFIG=~/.kube/config-host-admin && echo $KUBECONFIG && kubectl config use-context host-admin && az account set --subscription subscription_name && echo "Cluster set to -- AKS-Dev-WestEurope"'

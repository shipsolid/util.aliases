# Basic Docker command shortcuts
alias d="docker"
alias dps="docker ps"               # List running containers
alias dpsa="docker ps -a"           # List all containers (including stopped)
alias di="docker images"            # List all Docker images
alias dv="docker volume ls"         # List all Docker volumes
alias dn="docker network ls"        # List all Docker networks
alias db="docker build"             # Build an image from Dockerfile
alias drm="docker rm"               # Remove a stopped container
alias drmi="docker rmi"             # Remove an image
alias drmv="docker volume rm"       # Remove a Docker volume
alias dexec="docker exec -it"       # Execute a command in a running container
alias dlogs="docker logs"           # Show logs of a container
alias dstart="docker start"         # Start a stopped container
alias dstop="docker stop"           # Stop a running container
alias dkill="docker kill"           # Kill a running container
alias dcp="docker cp"               # Copy files to/from a container

# Remove all stopped containers, dangling images, and unused networks
alias dclean="docker system prune -f"

# Remove all stopped containers
alias drm_stopped="docker container prune -f"

# Remove all dangling (untagged) images
alias drmi_dangling="docker image prune -f"

# Remove all unused networks
alias drm_unused_networks="docker network prune -f"

# Start a container and attach to it
alias dup="docker-compose up -d"               # Start all services in Docker Compose file
alias ddown="docker-compose down"              # Stop all services in Docker Compose

# Show Docker disk usage stats
alias ddu="docker system df"

# Show processes running in containers
alias dtop="docker top"

# Alias for viewing detailed container stats
alias dstats="docker stats --all"

# Build and run a Dockerfile in the current directory
alias dbuild_run="docker build -t temp_image . && docker run -it temp_image"

# Quickly enter a container's shell (default to bash, fallback to sh)
alias dshell="docker exec -it \$(docker ps -q) bash || docker exec -it \$(docker ps -q) sh"

# Stop and remove all containers
alias dreset="docker stop \$(docker ps -aq) && docker rm \$(docker ps -aq)"

# Remove all images
alias drm_all_images="docker rmi \$(docker images -aq) --force"

# Display Docker events in real time
alias devents="docker events --format 'table {{.Time}}\t{{.Type}}\t{{.Action}}\t{{.Actor.Name}}'"

# Clean up unused Docker objects (images, containers, volumes)
alias ddeepclean="docker system prune -af --volumes"

# Tag and push an image to a registry
alias dtag_push="docker tag my_image:latest my_registry/my_image:latest && docker push my_registry/my_image:latest"

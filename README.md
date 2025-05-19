
# shipsolid--util.aliases

A modular and extensible CLI alias system to streamline your terminal workflows across environments.

## 📁 Project Structure

```sh
shipsolid--util.aliases-main/
└── aliases/
├── system.sh       # Entry point to source all aliases
├── git.sh          # Git-related aliases
├── docker.sh       # Docker-related aliases (optional)
└── ...             # Add more alias scripts as needed
```

## ✅ Features

- Centralized management of all your shell aliases
- Modular scripts (grouped by topic or tool)
- Auto-sourcing mechanism based on directory path
- Easy to integrate in your `.bashrc`, `.zshrc`, or profile

## 🚀 Usage

To load all aliases, simply run the following command:

```bash
source /home/amit/repos/shipsolid--util.aliases-main/aliases/system.sh /home/amit/repos/shipsolid--util.aliases-main/aliases
```

> ✅ **Note**: You must provide the full path to the `aliases` directory as an argument. This is used by `system.sh` to resolve and source all other alias files.

### 🔄 Automate on Shell Startup

Add the following to your `~/.bashrc` or `~/.zshrc` to auto-load aliases on every terminal session:

```bash
source /home/amit/repos/shipsolid--util.aliases-main/aliases/system.sh /home/amit/repos/shipsolid--util.aliases-main/aliases
```

## 🧩 How It Works

The `system.sh` script takes one argument — the base path to the alias directory — and sources all `*.sh` files in that directory **except itself**. This makes it easy to keep things modular and scalable.

# 🔁 [clone.sh] GitHub Repo Cloner with SSH Alias Support

This is a Bash utility script to **clone GitHub repositories** using **SSH aliases** for personal and work accounts.  
It supports repository names containing **dots**, determines the default branch if not provided, and creates a uniquely named directory for each clone.

---

## 📂 Features

- ✅ Supports personal (`p`) and work (`w`) GitHub SSH aliases
- ✅ Handles repo names with dots (e.g., `my.repo.name.git`)
- ✅ Automatically detects the default branch if not specified
- ✅ Appends the username and branch name to the clone directory
- ✅ Clones using `--depth 1` for faster, shallow copies (if a branch is provided)

---

## 🔧 SSH Config Prerequisites

Make sure your `~/.ssh/config` includes entries like:

```ssh
# Personal GitHub
Host github.com-gmail
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_gmail

# Work GitHub
Host github.com-work
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_work
```

## Usage

```sh
./clone.sh <account-type> <repository-url> [branch]
```

### Arguments

| Argument         | Description                                                           |
| ---------------- | --------------------------------------------------------------------- |
| `account-type`   | `p` for personal, `w` for work                                        |
| `repository-url` | HTTPS URL of the GitHub repo (e.g. `https://github.com/org/repo.git`) |
| `branch`         | *(Optional)* Git branch to clone                                      |

### 🧪 Examples

```sh
# Clone personal repo and detect default branch
./clone.sh p https://github.com/amit/my.repo.name.git

# Clone work repo with a specific branch
./clone.sh w https://github.com/company/devops-tools.git main
```

### 📁 Clone Directory Format

The script clones the repository into a directory named:

```sh
<username>--<repo-name>-<branch>
```

Example:

```sh
amit--my.repo.name-main
```

# ✍️ Author

Maintained by Amit Singh — [Site Reliability & Observability Engineer](mailto:amitsingh007s@gmail.com)

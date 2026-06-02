# Gitflow
Small linux tool to better manage git commands

# Architecture
```bash
~/.local/bin/gitflow          # script principal (commande)
~/.config/gitflow/config.sh   # configuration (templates, préférences)
~/.config/gitflow/templates/  # templates de messages de commit
```

# Installation
## Download files then :
bash install.sh

## Or manually :
cp gitflow ~/.local/bin/ && chmod +x ~/.local/bin/gitflow

# Config

~/.config/gitflow/config.sh
```bash
BRANCH_PREFIXES=("feature" "fix" "hotfix" "refactor" "chore")
BRANCH_SEPARATOR="/"        # → feature/mon-nom
BRANCH_CASE="kebab"         # kebab | snake | lower
MAIN_BRANCH="main"
AUTO_PUSH=true
USE_GITMOJI=true
SCOPES=("api" "auth" "ui" "db" "ci")
```

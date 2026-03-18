#!/usr/bin/env bash
# ===================================================================
# Sync Script - 自动同步配置
# ===================================================================
# 检测 OS 并拉取对应分支的最新配置
#
# 使用方法:
#   cd ~/.config && ./scripts/sync.sh
#   或
#   ~/.config/scripts/sync.sh
# ===================================================================

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILE_DIR="$(dirname "$SCRIPT_DIR")"

# -------------------------------------------------------------------
# Detect OS and determine branch
# -------------------------------------------------------------------
if [[ "$OSTYPE" == darwin* ]]; then
    CURRENT_OS="macos"
    TARGET_BRANCH="macos"
elif [[ "$OSTYPE" == linux-gnu* ]]; then
    CURRENT_OS="linux"
    TARGET_BRANCH="linux"
else
    echo "Unknown OS: $OSTYPE"
    exit 1
fi

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}Sync Dotfiles${NC}"
echo -e "${BLUE}========================================${NC}"
echo "OS: $CURRENT_OS"
echo "Branch: $TARGET_BRANCH"
echo ""

cd "$DOTFILE_DIR"

# -------------------------------------------------------------------
# Stash local changes if any
# -------------------------------------------------------------------
if [[ -n $(git status --porcelain) ]]; then
    echo -e "${YELLOW}检测到未提交的更改${NC}"
    git stash push -m "Auto-stash before sync on $(date)"
    echo -e "${GREEN}✓${NC} 已暂存本地更改"
fi

# -------------------------------------------------------------------
# Fetch and pull
# -------------------------------------------------------------------
echo ""
echo "拉取最新配置..."
git fetch origin

# Check if target branch exists
if ! git show-ref --verify --quiet refs/heads/"$TARGET_BRANCH"; then
    echo -e "${YELLOW}分支 $TARGET_BRANCH 不存在，使用 main${NC}"
    TARGET_BRANCH="main"
fi

git pull origin "$TARGET_BRANCH"
echo -e "${GREEN}✓${NC} 已同步到最新版本"

# -------------------------------------------------------------------
# Unstash if needed
# -------------------------------------------------------------------
if git stash list | grep -q "Auto-stash before sync"; then
    echo ""
    echo "恢复本地更改..."
    git stash pop
    echo -e "${GREEN}✓${NC} 已恢复本地更改"
fi

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}同步完成!${NC}"
echo -e "${GREEN}========================================${NC}"

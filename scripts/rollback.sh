#!/usr/bin/env bash
# ===================================================================
# Rollback Script - 回退到创建分支前的状态
# ===================================================================
# 如果对分支创建不满意，执行此脚本回退
#
# 使用方法:
#   cd ~/.config && ./scripts/rollback.sh
# ===================================================================

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}========================================${NC}"
echo -e "${YELLOW}回退 Dotfiles 分支操作${NC}"
echo -e "${YELLOW}========================================${NC}"
echo ""

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILE_DIR="$(dirname "$SCRIPT_DIR")"

cd "$DOTFILE_DIR"

# Show current state
echo "当前状态:"
echo "  分支: $(git branch --show-current)"
echo "  远程分支:"
git branch -r | grep origin | sed 's/^/    /'
echo ""

# Confirm
read -p "确认回退? 这将删除 linux 分支并恢复 .gitignore (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "取消回退"
    exit 0
fi

# Switch to main
echo ""
echo "切换到 main 分支..."
git checkout main

# Delete local linux branch if exists
if git show-ref --verify --quiet refs/heads/linux; then
    echo "删除本地 linux 分支..."
    git branch -D linux
fi

# Delete remote linux branch if exists
if git ls-remote --heads origin linux | grep -q linux; then
    echo "删除远程 linux 分支..."
    git push origin --delete linux
fi

# Restore .gitignore if needed
echo "恢复 .gitignore..."
git checkout .gitignore

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}回退完成!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo "当前状态:"
echo "  分支: $(git branch --show-current)"
echo "  未提交更改: $(git status --short | wc -l | tr -d ' ') 个文件"

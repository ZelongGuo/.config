#!/usr/bin/env bash
# ===================================================================
# Linux One-Click Setup Script
# ===================================================================
# 用于在 Linux 新机器上快速部署 dotfiles
#
# 使用方法:
#   1. 复制此脚本到 Linux 机器
#   2. chmod +x linux-setup.sh
#   3. ./linux-setup.sh
# ===================================================================

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Repository URL
REPO_URL="https://github.com/ZelongGuo/.config.git"
REPO_BRANCH="${REPO_BRANCH:-linux}"  # 可通过环境变量指定分支

# Directories
DOTDIR="$HOME/.dotfiles"
CONFIG="$HOME/.config"

# -------------------------------------------------------------------
# Print section header
# -------------------------------------------------------------------
print_header() {
    echo -e "${BLUE}=========================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}=========================================${NC}"
}

# -------------------------------------------------------------------
# Print success/error
# -------------------------------------------------------------------
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

# -------------------------------------------------------------------
# Check prerequisites
# -------------------------------------------------------------------
check_prerequisites() {
    print_header "检查依赖"

    local missing=0

    if ! command -v git &>/dev/null; then
        print_error "git 未安装"
        echo "  请先安装: sudo apt install git  # Debian/Ubuntu"
        echo "           sudo pacman -S git      # Arch"
        missing=1
    else
        print_success "git 已安装"
    fi

    if ! command -v zsh &>/dev/null; then
        print_warning "zsh 未安装 (推荐安装)"
        echo "  安装: sudo apt install zsh  # Debian/Ubuntu"
        echo "       sudo pacman -S zsh      # Arch"
    else
        print_success "zsh 已安装"
    fi

    if [[ $missing -eq 1 ]]; then
        exit 1
    fi
}

# -------------------------------------------------------------------
# Clone repository to .dotfiles
# -------------------------------------------------------------------
clone_repo() {
    print_header "克隆配置仓库"

    if [[ -d "$DOTDIR" ]]; then
        print_warning "$DOTDIR 已存在"
        read -p "是否删除并重新克隆? (y/N): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            rm -rf "$DOTDIR"
        else
            print_warning "跳过克隆，使用现有目录"
            cd "$DOTDIR"
            git pull origin "$REPO_BRANCH"
            return
        fi
    fi

    git clone --branch "$REPO_BRANCH" --single-branch "$REPO_URL" "$DOTDIR"
    print_success "仓库已克隆到 $DOTDIR"
}

# -------------------------------------------------------------------
# Create symbolic links
# -------------------------------------------------------------------
create_symlinks() {
    print_header "创建符号链接"

    # 需要链接的配置目录
    local configs=("tmux" "zsh" "yazi" "lazygit" "ranger" "opencode")

    for config in "${configs[@]}"; do
        local source="$DOTDIR/$config"
        local target="$CONFIG/$config"

        if [[ ! -d "$source" ]]; then
            print_warning "跳过 $config (源目录不存在)"
            continue
        fi

        # 删除现有链接或目录
        if [[ -L "$target" ]]; then
            rm "$target"
        elif [[ -d "$target" ]]; then
            # 备份现有目录
            mv "$target" "${target}.backup.$(date +%Y%m%d%H%M%S)"
            print_warning "已备份现有 $config 目录"
        fi

        ln -s "$source" "$target"
        print_success "链接 $config -> ~/.dotfiles/$config"
    done
}

# -------------------------------------------------------------------
# Clone nvim (separate repo)
# -------------------------------------------------------------------
clone_nvim() {
    print_header "克隆 nvim 配置"

    local nvim_repo="https://github.com/ZelongGuo/nvim.git"
    local nvim_target="$CONFIG/nvim"

    if [[ -d "$nvim_target" ]]; then
        print_warning "nvim 配置已存在"
        read -p "是否重新克隆? (y/N): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            rm -rf "$nvim_target"
        else
            return
        fi
    fi

    git clone "$nvim_repo" "$nvim_target"
    print_success "nvim 配置已安装"
}

# -------------------------------------------------------------------
# Create home directory symlinks
# -------------------------------------------------------------------
create_home_symlinks() {
    print_header "创建家目录符号链接"

    # .zshrc
    if [[ -L "$HOME/.zshrc" ]]; then
        rm "$HOME/.zshrc"
    fi
    ln -sf "$DOTDIR/zsh/zshrc" "$HOME/.zshrc"
    print_success "链接 .zshrc"

    # .zimrc
    if [[ -L "$HOME/.zimrc" ]]; then
        rm "$HOME/.zimrc"
    fi
    ln -sf "$DOTDIR/zsh/zimrc" "$HOME/.zimrc"
    print_success "链接 .zimrc"

    # .tmux.conf
    if [[ -L "$HOME/.tmux.conf" ]]; then
        rm "$HOME/.tmux.conf"
    fi
    ln -sf "$DOTDIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
    print_success "链接 .tmux.conf"
}

# -------------------------------------------------------------------
# Optional: Install dependencies
# -------------------------------------------------------------------
install_dependencies() {
    print_header "可选: 安装依赖"

    echo "以下工具推荐安装 (手动):"
    echo "  - neovim:  sudo apt install neovim"
    echo "  - tmux:    sudo apt install tmux"
    echo "  - fzf:     sudo apt install fzf"
    echo "  - fd:      sudo apt install fd-find"
    echo "  - ripgrep: sudo apt install ripgrep"
    echo "  - lazygit: 参考官方文档"
    echo "  - yazi:    参考官方文档"
    echo ""
    read -p "是否显示安装命令? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "# Ubuntu/Debian"
        echo "sudo apt update"
        echo "sudo apt install -y neovim tmux fzf fd-find ripgrep"
        echo ""
        echo "# Arch Linux"
        echo "sudo pacman -S neovim tmux fzf fd ripgrep"
    fi
}

# -------------------------------------------------------------------
# Final notes
# -------------------------------------------------------------------
final_notes() {
    print_header "安装完成!"

    echo -e "${GREEN}配置已成功安装!${NC}"
    echo ""
    echo "目录结构:"
    echo "  ~/.dotfiles/    # 配置仓库 (只包含你追踪的文件)"
    echo "  ~/.config/      # 实际使用的配置 (通过符号链接)"
    echo ""
    echo "后续操作:"
    echo "  1. 重新加载 shell: source ~/.zshrc"
    echo "  2. 或重新登录终端"
    echo "  3. 设置 zsh 为默认 shell: chsh -s \$(which zsh)"
    echo ""
    echo "更新配置:"
    echo "  cd ~/.dotfiles && git pull"
    echo ""
    echo "配置文件位置:"
    echo "  - zsh:   ~/.dotfiles/zsh/"
    echo "  - tmux:  ~/.dotfiles/tmux/"
    echo "  - yazi:  ~/.dotfiles/yazi/"
    echo "  - nvim:  ~/.config/nvim/ (独立仓库)"
}

# -------------------------------------------------------------------
# Main execution
# -------------------------------------------------------------------
main() {
    print_header "Linux Dotfiles 一键安装"
    echo "检测到 OS: Linux"
    echo "目标分支: $REPO_BRANCH"
    echo ""

    check_prerequisites
    clone_repo
    create_symlinks
    clone_nvim
    create_home_symlinks
    install_dependencies
    final_notes
}

main "$@"

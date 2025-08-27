# -------------------------------------------------------------------
# --- True Color ---
# set the terminal (iterm) to 256 xterm, only some of modern terminal emulators support true color
export TERM=xterm-256color  
# tell current applications like vim and tmux that the current terminal support true color
export COLORTERM=truecolor  

# -------------------------------------------------------------------
# --- GMT ---
# NOTE: once you change the gmt version using gmtswitch, you should refresh the terminal or source ~/.zshrc to reset the GS_LIB
# for more information, see
# https://docs.gmt-china.org/latest/module/gmtswitch/
# https://docs.gmt-china.org/latest/install/macOS/#gmt
export GMTHOME=$HOME/this_gmt
# export GMTHOME=/Applications/GMT-6.4.0.app/Contents/Resources
export PATH=${GMTHOME}/bin:${PATH}
export PROJ_LIB=$GMTHOME/share/proj
GMT_VERSION=$(gmt --version)
if [[ "$GMT_VERSION" == "6.2.0" ]]; then
	export GS_LIB=$GMTHOME/share/ghostscript/9.53.3/Resource/Init
else
	export GS_LIB=$GMTHOME/share/ghostscript/Resource/Init
fi
export MAGICK_CONFIGURE_PATH=$GMTHOME/lib/GraphicsMagick/config


# -------------------------------------------------------------------
# --- NVIM SETTINGS ---
export MYNVIMRC="~/.config/nvim/init.lua"
# DO NOT LOAD DEFAULT RC, USING THE COUSTOM ONE
export RANGER_LOAD_DEFAULT_RC="false"
# change the default editor to nvim
export EDITOR=nvim

# -------------------------------------------------------------------
# --- CONDA ---
export conda="/Users/zelong/opt/miniconda3/etc/profile.d/conda.sh"

# --- HOMEBREW Tsinghua Mirrors for Domestic ---
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_CASK_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

# # --- Homebrew Officials, uncomment blow if needed  ---
# export HOMEBREW_BREW_GIT_REMOTE="https://github.com/Homebrew/brew.git"
# export HOMEBREW_CORE_GIT_REMOTE="https://github.com/Homebrew/homebrew-core.git"
# export HOMEBREW_CASK_GIT_REMOTE="https://github.com/Homebrew/homebrew-cask.git"
# unset HOMEBREW_BOTTLE_DOMAIN

# -------------------------------------------------------------------
# --- Git Proxy Auto Config (Mihomo Party / Clash) ---
# Auto test if clash (mihomo party) is running, if so, configuring the proxy for git

setup_git_proxy() {
    # The local port is 14122
    local local_port=14122
    # The default clash port is 7890
    local clash_port=7890

    if lsof -i tcp:$local_port -sTCP:LISTEN >/dev/null 2>&1; then
        git config --global http.proxy "http://127.0.0.1:$clash_port"
        git config --global https.proxy "http://127.0.0.1:$clash_port"
        # echo "[Git Proxy] enabled! (http://127.0.0.1:$clash_port)"
    else
        git config --global --unset http.proxy >/dev/null 2>&1
        git config --global --unset https.proxy >/dev/null 2>&1
        # echo "[Git Proxy] disabled!（clash is not running now）"
    fi
}

setup_git_proxy




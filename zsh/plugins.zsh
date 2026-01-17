# --------------------------- Zim & Zsh --------------------------- 
export PLUG_DIR=$HOME/.zim
if [[ ! -d $PLUG_DIR ]]; then
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    rm $HOME/.zimrc
    ln -s $HOME/.config/zsh/zimrc $HOME/.zimrc
fi

if ! cat $HOME/.zshrc | grep 'source ~/.config/zsh/zshrc' > /dev/null 2>&1; then
    echo "source ~/.config/zsh/zshrc" >> $HOME/.zshrc
fi

# --------------------------- gmtversions --------------------------- 
local gmt_file=$HOME/.gmtversions
if [[ ! -e $gmt_file ]]; then
    ln -s $HOME/.config/zsh/.gmtversions $gmt_file
fi

# --------------------------- tmux conf --------------------------- 
local tmux_conf=$HOME/.tmux.conf
if [[ ! -e $tmux_conf ]]; then
    ln -s $HOME/.config/zsh/.tmux_conf $tmux_conf
fi

# --------------------------- .shared ---------------------------
local shared_file=$HOME/.shared
if [[ ! -e $shared_file ]]; then
    ln -s $HOME/.config/zsh/.shared $shared_file
fi

# --------------------------- claude skills ---------------------------
local claude_dir=$HOME/.claude
local claude_skills_dir=$HOME/.claude/skills
if [[ ! -e $claude_dir ]] || [[ ! -e $claude_skills_dir ]]; then
    ln -s $HOME/.config/claude/skills $claude_skills_dir
fi

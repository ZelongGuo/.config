# Dotfiles

![macOS](https://img.shields.io/badge/macOS-11%2B-999999?logo=apple&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Ubuntu%20%7C%20Debian-orange?logo=linux&logoColor=white)
![Shell](https://img.shields.io/badge/shell-Zsh-2200cc?logo=zsh&logoColor=white)
![Editor](https://img.shields.io/badge/editor-Neovim-57A143?logo=neovim&logoColor=white)

> Cross-platform configuration files for macOS and Linux, featuring a modular Zsh setup, Neovim Lua config, and terminal workflow optimizations.

---

## Overview

This repository contains my personal dotfiles, designed for daily development work across macOS and Linux systems. The configuration emphasizes:

- **Modular structure** - Easy to maintain and extend
- **Cross-platform compatibility** - macOS and Linux support with OS-specific configs
- **Terminal-centric workflow** - Optimized for Vim/tmux/fzf usage
- **Smart automation** - Auto-symlinking, proxy detection, and environment setup

---

## Quick Start

### Prerequisites

The bootstrap script will check for these. If missing, it will show installation instructions:

- **Git** - For cloning and updating
- **Zsh** - The shell these configs are designed for

If you want to install manually beforehand:

```bash
# macOS
brew install zsh git

# Ubuntu/Debian
sudo apt install zsh git

# Arch Linux
sudo pacman -S zsh git
```

### Installation

```bash
# Clone repository
cd ~
git clone <your-repo-url> .config

# Run bootstrap script (checks prerequisites automatically)
~/.config/scripts/bootstrap.sh

# Make zsh your default shell (if not already)
chsh -s $(which zsh)
# Then log out and log back in
```

The bootstrap script will:
1. Detect your operating system (macOS or Linux)
2. Create symlinks for OS-specific configurations
3. Create symlinks for home directory configs (.zshrc, .zimrc, etc.)
4. Reload zsh configuration

### Linux Installation (with existing .config)

If your `~/.config` directory already contains system configurations (e.g., `dconf`, `gtk-3.0`, `ibus`, `nautilus`) that you want to preserve, use the **temporary directory method**:

```bash
# Clone to a temporary directory inside .config
git clone <your-repo-url> ~/.config/dotfiles-temp

# Run the bootstrap script
~/.config/dotfiles-temp/scripts/bootstrap.sh

# Make zsh your default shell
chsh -s $(which zsh)

# Restart your terminal or log out and back in
```

**Why this method?**
- The repository uses a restrictive `.gitignore` strategy (ignore all, include only tracked files)
- Directly cloning to `~/.config` would not pull existing untracked files
- This approach preserves your existing system configurations while deploying dotfiles

**Updating later:**
```bash
cd ~/.config/dotfiles-temp
git pull
~/.config/dotfiles-temp/scripts/bootstrap.sh
```

**Optional cleanup:**
After deployment, you can delete the temporary directory if you don't plan to update frequently:
```bash
rm -rf ~/.config/dotfiles-temp
```

---

## Features

### Shell (Zsh + Zim)

- **Zim Framework** - Fast Zsh configuration framework with modules
- **Custom Vim keybindings** - hjkl navigation with `jk` to enter normal mode
- **Smart cursor** - Beam/bar cursor changes based on Vim mode
- **FZF integration** - Enhanced fuzzy finding with custom colors and previews
- **Auto tmux** - Automatically starts tmux session on shell launch
- **Git proxy auto-config** - Detects Clash/Mihomo Party and configures git proxy

### Editor (Neovim)

- **Lua-based configuration** - Modern, fast, and maintainable
- **Custom keybindings** - Remapped cursor movement (i/k/j/l for up/down/left/right)
- **LSP support** - Language Server Protocol for intelligent code completion
- **VimTeX** - LaTeX editing with compile and preview support
- **Telescope** - Fuzzy finder for files, buffers, and more
- **Lazy.nvim** - Modern plugin manager

### Terminal Tools

| Tool | Purpose |
|------|---------|
| **tmux** | Terminal multiplexer with powerline status bar |
| **kitty** | Fast, GPU-accelerated terminal emulator |
| **fzf** | Command-line fuzzy finder with fd integration |
| **yazi** | Blazing fast terminal file manager |
| **lazygit** | Terminal UI for git operations |
| **ranger** | Console file manager with preview |

---

## Directory Structure

```
~/.config/
├── zsh/                      # Zsh configuration
│   ├── zshrc                # Main entry point
│   ├── zimrc                # Zim framework modules
│   ├── env.zsh              # Common environment variables
│   ├── aliases.zsh          # Common aliases (vim=nvim, ra=yazi, etc.)
│   ├── vim_keybindings.zsh  # Vim-style keybindings with cursor shapes
│   ├── fzf_completion.zsh   # FZF fuzzy completion setup
│   ├── tmux.zsh             # Tmux auto-start and environment sync
│   ├── zim.zsh              # Zim framework initialization
│   └── os/
│       ├── macos.zsh        # macOS: GMT, Conda, Homebrew, proxy
│       └── linux.zsh        # Linux: placeholder for platform-specific
│
├── os/                       # OS-specific configs
│   ├── macos/               # macOS-only applications
│   │   ├── aerospace/       # Aerospace window manager config
│   │   ├── iterm2/          # iTerm2 dynamic profiles
│   │   └── brew/            # Homebrew Brewfile
│   └── linux/               # Linux-only applications (reserved)
│
├── scripts/                  # Utility scripts
│   ├── bootstrap.sh         # Auto-install script
│   └── symlink.sh           # Symlink management
│
├── nvim/                     # Neovim Lua configuration
│   ├── init.lua             # Entry point
│   ├── lua/                 # Modular Lua configs
│   ├── ftplugin/            # Filetype-specific settings
│   └── spell/               # Spell files
│
├── tmux/                     # Tmux configuration
│   ├── .tmux.conf           # Main tmux config
│   ├── tmux-powerline/      # Status bar themes
│   └── extrakto/            # Text extraction plugin
│
├── kitty/                    # Kitty terminal config
├── yazi/                     # Yazi file manager config
│   ├── yazi.toml            # Main config
│   ├── keymap.toml          # Keybindings
│   ├── theme.toml           # Theme settings
│   ├── flavors/             # Color schemes
│   └── plugins/             # Yazi plugins
│
├── lazygit/                  # Lazygit UI config
├── ranger/                   # Ranger file manager config
├── surfingkeys/              # Vim-like browser extension
├── git/                      # Git global config
├── btop/                     # System monitor theme
└── opencode/                 # Custom skills/scripts
```

### Cross-Platform vs OS-Specific

| Type | Location | Examples |
|------|----------|----------|
| **Cross-platform** | `~/.config/<name>/` | kitty, nvim, tmux, yazi, lazygit |
| **macOS-only** | `os/macos/<name>/` → symlinked | aerospace, iterm2, brew |
| **Linux-only** | `os/linux/<name>/` → symlinked | (add as needed) |

---

## Dependencies

### Essential (for basic functionality)

| Tool | Purpose | Install |
|------|---------|---------|
| **zsh** | Shell | `brew install zsh` / `sudo apt install zsh` |
| **git** | Version control | `brew install git` / `sudo apt install git` |
| **nvim** | Editor (set as $EDITOR) | `brew install nvim` / `sudo apt install neovim` |

### Recommended (enhanced experience)

| Tool | Purpose | Install |
|------|---------|---------|
| **tmux** | Terminal multiplexer | `brew install tmux` / `sudo apt install tmux` |
| **fzf** | Fuzzy finder | `brew install fzf` / `sudo apt install fzf` |
| **fd** | Faster find | `brew install fd` / `sudo apt install fd` |
| **ripgrep** | Faster grep | `brew install rg` / `sudo apt install ripgrep` |
| **lazygit** | Git UI | `brew install lazygit` |
| **bat** | Better cat with syntax highlighting | `brew install bat` |
| **highlight** | Syntax highlighting for previews | `brew install highlight` |

### Optional (personal preference)

| Tool | Purpose | Install |
|------|---------|---------|
| **yazi** | Blazing fast file manager | `brew install yazi` |
| **btop** | Modern system monitor | `brew install btop` |
| **ranger** | Console file manager | `brew install ranger` |

### macOS Only

| Tool | Purpose | Install |
|------|---------|---------|
| **aerospace** | Tiling window manager | `brew install --cask nikitabobko/tap/aerospace` |
| **kitty** | GPU terminal | `brew install kitty` |

---

## Keyboard Shortcuts

### Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `vim` | `nvim` | Use Neovim |
| `vi` | `nvim` | Use Neovim |
| `ra` | `yazi` | Open file manager |
| `t` | `tmux` | Attach/Create tmux session |
| `g` | `lazygit` | Open lazygit |
| `f` | `fzf` | Open fuzzy finder |
| `tn` | `tmux new -s zelong` | Create named session |

### Tmux Operations

Prefix: `Ctrl-a`

| Keys | Operations |
|------|------------|
| **Pane Operations** | |
| `C-a -` | Split pane horizontally |
| `C-a \` | Split pane vertically |
| `C-a i/j/k/l` | Move cursor up/left/down/right |
| `C-a f` | Toggle full pane |
| `C-a >/<` | Swap with prev/next pane |
| `C-a h/j/k/l` | Resize pane |
| `C-a q` | Kill pane |
| **Window Operations** | |
| `C-a c` | Create new window |
| `C-a number` | Select window by number |
| `C-a C-j/C-l` | Select prev/next window |
| `C-a C-q` | Kill window |
| **Copy Mode** | |
| `C-a [` | Enter vim-copy mode |
| `C-a p` | Paste buffer |
| `C-a b` | List buffers |

### Vim Keybindings (Shell)

| Keys | Mode | Operations |
|------|------|------------|
| `jk` | Insert → Normal | Switch to normal mode |
| `h/j/k/l` | Normal | Left/down/up/right |
| `H/L` | Normal | Insert at bol/eol |
| `i/k` | Normal | Up/down in history |
| `u` | Normal | Undo |

### Neovim Custom Keybindings

| Keys | Mode | Operations |
|------|------|------------|
| **Cursor Movement (Remapped)** | | |
| `i/k/j/l` | Normal | Up/down/left/right |
| `I/K/J/L` | Normal | Move 5 lines |
| `f/F` | Normal | Find backward/forward |
| **Buffer/Window** | | |
| `sn/si/sk/sj/sl` | Normal | Split new window |
| `sml` | Normal | Rotate windows |
| **Telescope** | | |
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep |
| `<leader>fb` | Normal | Find buffers |
| `<leader>fr` | Normal | Recent files |

### Kitty Operations

| Keys | Operations |
|------|------------|
| `cmd +` | Increase font size |
| `cmd -` | Decrease font size |
| `cmd 0` | Reset font size |

---

## OS-Specific Notes

### macOS

The following are macOS-only and managed via symlinks:

- **aerospace** - Window manager (requires macOS 14+)
- **iterm2** - iTerm2 dynamic profiles
- **brew** - Homebrew package management (Brewfile)

**macOS-specific features:**
- GMT (Generic Mapping Tools) path configuration
- Homebrew Tsinghua mirrors for domestic users
- Git proxy auto-config (detects Clash/Mihomo Party on port 14122)

To add a new macOS-specific config:
```bash
mv ~/.config/new-app ~/.config/os/macos/new-app
~/.config/scripts/symlink.sh
```

### Linux (Ubuntu/Debian)

Edit `~/.config/zsh/os/linux.zsh` to add Linux-specific settings such as:
- Conda path
- Package manager aliases
- Proxy settings

---

## Customization

### Adjust Paths

Edit OS-specific files to match your system:

**macOS**: `~/.config/zsh/os/macos.zsh`
- GMT path: `GMTHOME`
- Conda path: `conda`
- Homebrew mirrors (Tsinghua vs official)

**Linux**: `~/.config/zsh/os/linux.zsh`
- Add your Linux-specific paths and settings

### First-Time Setup

1. **Zim framework**: Auto-installs on first run, restart terminal after
2. **Conda**: Uncomment and adjust path in OS-specific zsh file
3. **GMT**: Adjust `GMTHOME` path if different from default

### Modifying Tmux Status Bar

Edit `~/.config/tmux/tmux-powerline/themes/default.sh` to customize the bottom bar appearance.

---

## Verification

After installation, verify with:

```bash
# Environment variables
echo $EDITOR    # should output: nvim
echo $TERM      # should output: xterm-256color

# Aliases
alias vim       # should output: vim='nvim'
alias ra        # should output: ra='yazi'

# OS-specific
which brew     # macOS: shows path, Linux: no output

# Symlinks (macOS only)
ls -la ~/.config/aerospace  # -> os/macos/aerospace
ls -la ~/.config/iterm2     # -> os/macos/iterm2
ls -la ~/.config/brew       # -> os/macos/brew
```

---

## Tips

:star: **Recommendation**: Swap `CapsLock` and `Ctrl` for better Vim/tmux experience. See [this guide](https://www.emacswiki.org/emacs/MovingTheCtrlKey) for Linux systems.

### Useful Commands

```bash
# Reload zsh configuration
source ~/.config/zsh/zshrc

# Recreate all symlinks
~/.config/scripts/symlink.sh

# Update Homebrew packages and Brewfile
brew bundle dump --force --file=~/.config/os/macos/brew/Brewfile.txt

# Clean up unused Homebrew packages
brew bundle cleanup --file=~/.config/os/macos/brew/Brewfile.txt
brew autoremove && brew cleanup
```

---

## Troubleshooting

**Config not loading?**
```bash
source ~/.config/zsh/zshrc
```

**Symlinks broken?**
```bash
~/.config/scripts/symlink.sh
```

**Zim not working?**
```bash
rm -rf ~/.zim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

**Tmux powerline icons not showing?**
1. Check terminal font - use a Nerd Font or Powerline font
2. Try `tmux -u` for UTF-8 mode
3. Check iTerm2 profile settings for UTF-8 encoding

**Git proxy issues?**
```bash
# Unset proxy manually
git config --global --unset http.proxy
git config --global --unset https.proxy
```

---

## Maintenance

### Updating Homebrew Bundle

```bash
# After installing new packages, update Brewfile
brew bundle dump --force --file=~/.config/os/macos/brew/Brewfile.txt
```

### Keeping Config in Sync

```bash
cd ~/.config
git add .
git commit -m "Update configs"
git push
```

---

## License

MIT

---

## Credits

Built with:
- [Zim](https://github.com/zimfw/zimfw) - Zsh configuration framework
- [Neovim](https://neovim.io/) - Modern Vim-based text editor
- [Tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [FZF](https://github.com/junegunn/fzf) - Command-line fuzzy finder
- [Kitty](https://sw.kovidgoyal.net/kitty/) - GPU terminal emulator

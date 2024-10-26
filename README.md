# My .config File

![MyMBP](https://img.shields.io/badge/apple-mbp%20%202021-999999?logo=apple&logoColor=white)


#### This is ***my configuration files*** in my Mac, a little changes maybe needed if you want to migrate it to your Linux.  
For now, 4 key configurations for me are: **Neovim, Ranger, Tmux and Aerospace**.  
**Iterm2** is an optional configuration for Mac.  

:star: ***Recommendation:*** Swapping `CapsLock` and `Ctrl` to have a better coding experience for **vim** and prefix key of **tmux** (I'm eyeing HHKB...). For some linux systems, see [this link.](https://www.emacswiki.org/emacs/MovingTheCtrlKey)  :)  

---

### Items

| Item        | Descriptions                                                                                               |
|-------------|------------------------------------------------------------------------------------------------------------|
| Applescript | Some apple scripts I wrote for rezise windowns and some stuff...                                           |
| htop        | Automatically saved here when installed it.                                                                |
| iterm2      | More information [this link](https://zhuanlan.zhihu.com/p/550022490).                                      |
| nvim        | My **Neovim** configurations.                                                                              |
| ranger      | ranger and its configurations.                                                                             |
| Aerospace   | Aerospace toml file.                                                                                       |
| zsh         | My zsh. Check [this link](https://seismo-learn.org/seismology101/best-practices/zsh/) in case you need it. |
| .shared     | Script for getting access to remote server of the institution.                                             |
| .tmux.conf  | My tmux settings.                                                                                          |
---
### Iterm2 Operations
| keys          | operations         |
|---------------|--------------------|
| `cmd +`       | increase font size |
| `cmd -`       | decrease font zise |
| `cmd 0`       | recover font size  |
| `cmd shift 0` | zoom window        |
---

### Tmux Operations
| keys                   | operations                      |
|------------------------|---------------------------------|
| `C-a w`                | check current windows and panes |
| **Pane Operations**    |
| `C-a -`                | split pane horizontally         |
| `C-a \`                | split pane vertically           |
| `C-a i`                | move cursor up                  |
| `C-a j`                | move cursor left                |
| `C-a k`                | move cursor down                |
| `C-a l`                | move cursor right               |
| `C-a f`                | full pane                       |
| `C-a >`                | swap with previous pane         |
| `C-a <`                | swap with next pane             |
| `C-a UP`               | resize upward                   |
| `C-a DOWN`             | resize downward                 |
| `C-a LEFT`             | resize to the left              |
| `C-a right`            | resize to the right             |
| `C-a q`                | kill pane                       |
| `C-a space`            | change pane view                |
| `C-a h`                | display panes                   |
| **Window Operations** |
| `C-a c`                | create a new window             |
| `C-a number`           | select NO. window               |
| `C-a C-j`              | select previous window          |
| `C-a C-l`              | select next window              |
| `C-a C-q`              | kill window                     |
| **vim-copy mode**     |
| `C-a [`                | enter vim-copy mode             |
| `C-a p`                | paste buffer                    |
| `C-a b`                | list buffers                    |


### Ranger Operations (partially)
| keys       | operations                              |
|------------|-----------------------------------------|
| `i`        | upward                                  |
| `k`        | downward                                |
| `j`        | left                                    |
| `l`        | right                                   |
| `gh`       | go home                                 |
| `r+number` | open file/folder with different options |
| `r+0`      | open file with default editor/program   |
| `space`    | select                                  |
| `yy`       | copy file                               |
| `dd`       | cut file                                |
| `pp`       | paste file                              |
| `zh`       | hidden files                            |

### Troubleshooting Notes

**1. Python dependencies in Neovim**
  Some plugins have dependencies on **Python**, for example, ranger, coc and nvim. Here I want to document how to address **Python** dependencies in **Neovim**.  
  **Check Python Dependencies:**  
  ```zsh
  # errors are threw when typing in Neovim:
  
  E319: No "python3" provider found. Run ":checkhealth provider"
  
  # and also a lot of errors related to Ultisnip when you are typing:
  
  Error detected while processing InsertCharPre Autocommands for
  "*"..function UltiSnips#TrackChange:
  ...
  
  # then
  :checkhealth provider
  # you can see some Warnings about the Python configurations. That is what we should deal with.
  ```
  These errors is related to ***Python Configuration***. If you do not have **python3** installed or configured correctly for **Neovim**, such errors would be threw up.  
  Follow below steps to solve this problem:  
  ```zsh
  # check the where the python3 and the pip3 are:
  which python3
  which pip3
  python3 --version
  pip3 --version
  # Note: it is easy to understand the locations of the Mac built-in Python is 
  # different with the Python conterpart in conda environment. Check Python Notes for more.
  # here Nvim is directly linked to the Mac built-in Python
  
  pip3 install --user --upgrade neovim
  ```
  *Note: more info about the python environment, PYTHONPATH setting as well as python environment in Conda, see the Python Notes...*

**2. True color compatibility between Item2, tmux and nvim**  

Indicate the folowing content into env.sh to make iterm2 enabling true color.
```zsh
# --- True Color ---
# set the terminal (iterm) to 256 xterm, only some of modern terminal emulators support true color
export TERM=xterm-256color  
# tell current applications like vim and tmux that the current terminal support true color
export COLORTERM=truecolor  
```
Then add the followings to tmux configure file. If you don't do or you did it wrongly, you will come across some wired thing with the comments in Nvim. See Troubleshooting part of [this link.](https://github.com/lifepillar/vim-solarized8?tab=readme-ov-file) 
```zsh
# Important! Set colorscheme to be compatible with VIM, enable true colors
set -g default-terminal "tmux-256color"  # not screen-256color
set-option -ga terminal-overrides ",*256col*:Tc"
```
You should explicitly indicate "termguicolors" with vim to enable the vim true color, otherwise some vim color schemes like solarized8 can't work well.
```zsh
" Enable true color support, important for colorschemes
if has("termguicolors")
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    set termguicolors
endif
```





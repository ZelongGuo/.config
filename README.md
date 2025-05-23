# My .config File

![MyMBP](https://img.shields.io/badge/apple-mbp%20%202021-999999?logo=apple&logoColor=white)


#### This is ***my configuration files*** in my Mac, a little changes maybe needed if you want to migrate it to your Linux.  
For now, the key configurations for me are: **Neovim, Ranger, Tmux, lazygit and Aerospace, kitty, fzf**.  

:star: ***Recommendation:*** Swapping `CapsLock` and `Ctrl` to have a better coding experience for **vim** and prefix key of **tmux** (I'm eyeing HHKB...). For some linux systems, see [this link.](https://www.emacswiki.org/emacs/MovingTheCtrlKey)  :)  

---

### Items

| Item        | Descriptions                                                                                               |
|-------------|------------------------------------------------------------------------------------------------------------|
| Applescript | Some apple scripts I wrote for rezise windowns and some stuff...                                           |
| ~~iterm2~~ | ~~More information [this link](https://zhuanlan.zhihu.com/p/550022490).~~                                  |
| kitty       | Terminal                                                                                                   |
| nvim        | My **Neovim** configurations.                                                                              |
| ranger      | ranger and its configurations.                                                                             |
| Aerospace   | Aerospace toml file.                                                                                       |
| lazygit     | lazygit yaml file.                                                                                         |
| surfingkeys | A vim-like browser extension.                                                                              |
| zsh         | My zsh. Check [this link](https://seismo-learn.org/seismology101/best-practices/zsh/) in case you need it. |
| .shared     | Script for getting access to remote server of the institution.                                             |
| .tmux.conf  | My tmux settings.                                                                                          |
---

### Aerospace
Note, an alternative is [JankyBorders](https://github.com/FelixKratz/JankyBorders) which is used for
highlight the window borders.


### Kitty Operations
| keys          | operations         |
|---------------|--------------------|
| `cmd +`       | increase font size |
| `cmd -`       | decrease font zise |
| `cmd 0`       | recover font size  |
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


Note, the plugin `highlight` which is used for highlight the text and codes in ranger preview
windows, it could be installed with homebrew:  
```sh 
brew install highlight
```

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





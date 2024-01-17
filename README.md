# My .config File

![MyMBP](https://img.shields.io/badge/apple-mbp%20%202021-999999?logo=apple&logoColor=white)


#### This is ***my configuration files*** in my Mac, a little changes maybe needed if you want to migrate it to your Linux.  
For now, 3 key configurations for me are: **Neovim, ranger, tmux**.  
**Iterm2** is an optional configuration for Mac.  

:star: ***Recommandation:*** Swapping `CapsLock` and `Ctrl` to have a better coding experience for **vim** and prefix key of **tmux** (I'm eyeing HHKB...). For some linux systems, see [this link.](https://www.emacswiki.org/emacs/MovingTheCtrlKey)  :)  


<!-- TOC GFM -->

- [1. Applescript](#1-applescript)
- [2. htop](#2-htop)
- [3. iterm2](#3-iterm2)
- [4. nvim](#4-nvim)
- [5. ranger](#5-ranger)
- [6. zsh](#6-zsh)
- [7. .shared](#7-shared)
- [8. .tmux.conf](#8-tmuxconf)
- [9. Troubleshooting](#9-troubleshooting)

<!-- /TOC -->


### 1. Applescript

- Some apple scripts I wrote for rezise windowns and some stuff...

### 2. htop

- Automatically saved here when installed it.

### 3. iterm2

- Same to **htop**.  
- More information: https://zhuanlan.zhihu.com/p/550022490

### 4. nvim

- **Neovim** and its **configurations.** 


### 5. ranger

- **ranger** and its **configurations.** 

### 6. zsh

- My **zsh**.  
- Read the blog of following link, in case you need it:  
  https://seismo-learn.org/seismology101/best-practices/zsh/


### 7. .shared

- **.shared** file is used for getting access to remote server, like mefe9 of my GFZ computer.  

### 8. .tmux.conf

- **.tmux.conf** is my **tmux settings**.  

---
### 9. Troubleshooting

- Some plugins have dependencies on **Python**, for example, ranger, coc and nvim. Here I want to document how to address **Python** dependencies in **Neovim**.  

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




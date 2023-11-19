<h1>My .config File</h1>

#### This is ***my configuration files*** in my Mac, a little changes maybe needed if you want to migrate it to your Linux.  
For now, 3 key configurations for me are: **Neovim, ranger, tmux**.  
**Iterm2** is an optional configuration for Mac.  

:star: ***Recommandation:*** Swapping `CapsLock` and `Ctrl` to have a better coding experience for **vim** and prefix key of **tmux** (I'm eyeing HHKB...). For some linux systems, see [this link.](https://www.emacswiki.org/emacs/MovingTheCtrlKey)  :)  

<h2 id="2">Content</h2>

- [1. Applescript](#3) 
- [2. htop](#4) 
- [3. iterm2](#5) 
- [4. nvim](#6) 
- [5. ranger](#7) 
- [6. zsh](#8) 
- [7. .shared](#9) 
- [8. .tmux.conf](#10) 
- [9. Troubleshooting](#11) 

<h3 id="3">1. Applescript</h3>

- Some apple scripts I wrote for rezise windowns and some stuff...


<h3 id="4">2. htop</h3>

- Automatically saved here when installed it.

<h3 id="5">3. iterm2</h3>

- Same to **htop**

<h3 id="6">4. nvim</h3>

- **Neovim** and its **configurations.** 


<h3 id="7">5. ranger</h3>

- **ranger** and its **configurations.** 

<h3 id="8">6. zsh</h3>

- My **zsh**

<h3 id="9">7. .shared</h3>

- **.shared** file is used for getting access to remote server, like mefe9 of my GFZ computer.  

<h3 id="10">8. .tmux.conf</h3>

- **.tmux.conf** is my **tmux settings**.  

---
<h3 id="11">9. Troubleshooting</h3>

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




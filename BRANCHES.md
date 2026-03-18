# 分支策略说明

## 分支结构

本仓库使用多分支策略来管理跨平台配置文件，确保 macOS 和 Linux 可以独立开发和维护。

```
┌─────────────────────────────────────────────────────────┐
│                   origin/main                           │
│              (共用配置基准)                              │
│  - scripts/           安装脚本                            │
│  - README.md          文档                               │
│  - .gitignore         忽略规则                            │
│  - tmux/              Tmux 配置                           │
│  - yazi/              Yazi 配置                           │
│  - lazygit/           LazyGit 配置                        │
│  - opencode/          自定义脚本                          │
│  - zsh/               Zsh 配置 (包含两个平台的 OS 特定配置)  │
│  - os/macos/          macOS 专用配置占位                   │
│  - os/linux/          Linux 专用配置占位                   │
└─────────────────────────────────────────────────────────┘
         │                                    │
         │ merge                              │ merge
         ▼                                    ▼
┌──────────────────┐                ┌──────────────────┐
│   origin/macos   │                │   origin/linux   │
│  (macOS 工作分支) │                │  (Linux 工作分支) │
│                  │                │                  │
│ 用于 macOS 机器   │                │ 用于 Linux 机器   │
│ 日常开发和维护     │                │ 日常开发和维护     │
└──────────────────┘                └──────────────────┘
```

## 分支说明

### main 分支
- **用途**: 共用配置的基准分支
- **内容**: 跨平台通用的配置文件
- **更新**: 当共用配置更新时，合并到 main
- **不要直接**: 在 main 上进行平台特定修改

### macos 分支
- **用途**: macOS 专用工作分支
- **使用**: 在 macOS 机器上切换到此分支进行日常工作
- **内容**: 基于 main + macOS 特定配置和修改
- **更新**: 定期从 main 合并获取共用配置更新

### linux 分支
- **用途**: Linux 专用工作分支
- **使用**: 在 Linux 机器上切换到此分支进行日常工作
- **内容**: 基于 main + Linux 特定配置和修改
- **更新**: 定期从 main 合并获取共用配置更新

## 日常工作流

### macOS 上
```bash
# 1. 切换到 macos 分支
git checkout macos

# 2. 从 main 获取最新更新
git merge main

# 3. 日常修改配置
# ... 编辑配置文件 ...

# 4. 提交并推送
git add .
git commit -m "update: xxx"
git push origin macos
```

### Linux 上
```bash
# 1. 切换到 linux 分支
git checkout linux

# 2. 从 main 获取最新更新
git merge main

# 3. 日常修改配置
# ... 编辑配置文件 ...

# 4. 提交并推送
git add .
git commit -m "update: xxx"
git push origin linux
```

### 将共用配置更新同步到 main
```bash
# 当你修改了共用配置 (如 tmux, zsh 通用部分)
# 1. 在当前分支 (macos 或 linux) 提交
git add . && git commit -m "update shared config"

# 2. 切换到 main
git checkout main

# 3. 合并当前分支的更新
git merge macos  # 或 linux

# 4. 推送 main
git push origin main

# 5. 切回工作分支
git checkout macos  # 或 linux
```

## 目录结构约定

### 共用目录 (在 main 分支维护)
```
├── scripts/          # 安装和同步脚本
├── tmux/             # Tmux 配置
├── yazi/             # Yazi 文件管理器配置
├── lazygit/          # LazyGit 配置
├── opencode/         # 自定义技能和脚本
├── zsh/              # Zsh 配置
│   ├── zshrc         # 主配置
│   ├── zimrc         # Zim 框架配置
│   ├── aliases.zsh   # 别名
│   ├── env.zsh       # 环境变量
│   └── os/           # OS 特定配置入口
│       ├── macos.zsh # macOS 特定
│       └── linux.zsh # Linux 特定
```

### macOS 专用 (在 macos 分支维护)
```
├── os/macos/
│   ├── aerospace/    # Aerospace 窗口管理器
│   ├── AppleScript/  # Apple 脚本
│   ├── brew/         # Homebrew Brewfile
│   └── iterm2/       # iTerm2 配置
```

### Linux 专用 (在 linux 分支维护)
```
├── os/linux/         # 预留给 Linux 专用配置
```

## 迁移指南

### 新 macOS 机器
```bash
# Clone 并切换到 macos 分支
git clone -c clone.defaultRemoteName=origin \
  --branch macos \
  https://github.com/ZelongGuo/.config.git ~/.config

# 运行安装脚本
~/.config/scripts/bootstrap.sh
```

### 新 Linux 机器
```bash
# 使用独立目录方式 (推荐)
git clone --branch linux \
  https://github.com/ZelongGuo/.config.git ~/.dotfiles

# 运行安装脚本
~/.dotfiles/scripts/linux-setup.sh

# 或手动克隆到临时目录
git clone --branch linux \
  https://github.com/ZelongGuo/.config.git ~/.config/dotfiles-temp
~/.config/dotfiles-temp/scripts/bootstrap.sh
```

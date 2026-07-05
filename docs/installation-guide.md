# 安装指南

## 方法一：从 GitHub 仓库安装（推荐）

```bash
# 克隆仓库到本地
git clone https://github.com/[你的GitHub用户名]/law-survey-expert.git

# 创建符号链接到 WorkBuddy 插件目录
ln -sf "$(pwd)/law-survey-expert" ~/.workbuddy/plugins/local/law-survey-expert
```

## 方法二：下载 ZIP 包手动安装

1. 从 GitHub 仓库下载 ZIP 包
2. 解压到 `~/.workbuddy/plugins/local/law-survey-expert/`
3. 重启 WorkBuddy

## 方法三：使用一键安装脚本

```bash
chmod +x install.sh
./install.sh
```

## 验证安装

在 WorkBuddy 中输入 `/law-survey start`，如果看到系统启动界面，说明安装成功。
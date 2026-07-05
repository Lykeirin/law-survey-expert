#!/bin/bash
# 法学社会调查多智能体系统 - 一键安装脚本
# 使用方法: bash install.sh

INSTALL_DIR="$HOME/.workbuddy/plugins/local/law-survey-expert"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "📦 正在安装法学社会调查多智能体系统..."
echo "目标路径: $INSTALL_DIR"

# 创建目标目录
mkdir -p "$INSTALL_DIR/.codebuddy-plugin"
mkdir -p "$INSTALL_DIR/agents"
mkdir -p "$INSTALL_DIR/commands"
mkdir -p "$INSTALL_DIR/skills/legal-knowledge-retrieval"
mkdir -p "$INSTALL_DIR/skills/questionnaire-design-methodology"
mkdir -p "$INSTALL_DIR/skills/statistical-analysis"
mkdir -p "$INSTALL_DIR/skills/academic-writing"
mkdir -p "$INSTALL_DIR/skills/data-visualization"
mkdir -p "$INSTALL_DIR/docs"

# 复制文件
cp -r "$SCRIPT_DIR/.codebuddy-plugin" "$INSTALL_DIR/"
cp -r "$SCRIPT_DIR/agents/"* "$INSTALL_DIR/agents/"
cp -r "$SCRIPT_DIR/commands/"* "$INSTALL_DIR/commands/"
cp -r "$SCRIPT_DIR/skills/"* "$INSTALL_DIR/skills/"
cp -r "$SCRIPT_DIR/docs/"* "$INSTALL_DIR/docs/"
cp "$SCRIPT_DIR/README.md" "$INSTALL_DIR/"

echo "✅ 安装完成！"
echo "请在 WorkBuddy 中输入 /law-survey start 启动系统。"
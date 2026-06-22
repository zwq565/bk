#!/bin/bash

echo "🚀 正在初始化博客项目..."

# 检查是否安装了 git
if ! command -v git &> /dev/null; then
    echo "❌ 请先安装 Git"
    exit 1
fi

# 初始化主题 submodule
echo "📦 正在下载 PaperMod 主题..."
git submodule update --init --recursive

echo ""
echo "✅ 初始化完成！"
echo ""
echo "📝 接下来的步骤："
echo "1. 安装 Hugo: https://gohugo.io/installation/"
echo "2. 本地预览: hugo server -D"
echo "3. 新建文章: hugo new posts/文章标题.md"
echo ""
echo "🌐 部署到 Cloudflare Pages 请参考 README.md"

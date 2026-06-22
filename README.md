# 我的个人博客

基于 Hugo + PaperMod 主题搭建的静态博客，部署在 Cloudflare Pages 上。

## ✨ 特性

- 🚀 极速访问：Hugo 生成 + Cloudflare 全球 CDN
- 🎨 美观主题：PaperMod 简洁优雅的设计
- 📱 响应式：完美适配手机、平板、电脑
- 🌓 深色模式：支持自动/手动切换
- 🔍 站内搜索：快速找到想看的内容
- 📊 阅读统计：显示文章字数和阅读时间
- 📝 Markdown 写作：专注内容创作

## 🚀 快速开始

### 1. 安装 Hugo

```bash
# macOS
brew install hugo

# Windows
choco install hugo

# Linux
sudo apt install hugo
```

### 2. 克隆项目并初始化主题

```bash
# 克隆你的仓库
git clone https://github.com/你的用户名/my-blog.git
cd my-blog

# 初始化主题（首次克隆后必须执行）
git submodule update --init --recursive
```

### 3. 本地预览

```bash
hugo server -D
```

然后访问 `http://localhost:1313` 查看效果。

## 📝 写文章

### 新建文章

```bash
hugo new posts/文章标题.md
```

### 文章格式

文章使用 Markdown 格式，开头需要有 Front Matter：

```markdown
---
title: "文章标题"
date: 2026-06-22T10:00:00+08:00
draft: false  # true 为草稿，不会发布
tags: ["标签1", "标签2"]
categories: ["分类"]
description: "文章简短描述"
---

这里是文章正文...
```

### 发布文章

```bash
# 编辑文章，将 draft 改为 false
# 然后提交代码
git add .
git commit -m "发布新文章：文章标题"
git push
```

推送后 Cloudflare Pages 会自动构建部署，大约 1-2 分钟后生效。

## ☁️ 部署到 Cloudflare Pages

### 方法一：通过 Git 仓库自动部署（推荐）

1. 登录 [Cloudflare 控制台](https://dash.cloudflare.com/)
2. 进入 **Workers & Pages** → **Create application**
3. 切换到 **Pages** 标签 → **Connect to Git**
4. 选择你的博客仓库
5. 构建设置：
   - **Project name**: 随便填（会作为子域名）
   - **Production branch**: `main`
   - **Framework preset**: `Hugo`
   - **Build command**: `hugo`
   - **Build output directory**: `public`
6. 点击 **Save and Deploy**

### 方法二：直接上传静态文件

1. 本地构建：`hugo`
2. 会生成 `public` 文件夹
3. 在 Cloudflare Pages 选择 **Upload assets**
4. 上传 `public` 文件夹的内容

### 环境变量配置（推荐）

在项目设置 → Environment variables 中添加：

| 变量名 | 值 | 说明 |
|--------|-----|------|
| `HUGO_VERSION` | `0.143.1` | 指定 Hugo 版本，避免构建失败 |

## 🔧 常用命令

```bash
hugo server -D          # 本地预览（包含草稿）
hugo server             # 本地预览（仅发布内容）
hugo new posts/xxx.md   # 新建文章
hugo                    # 构建生产版本
hugo --minify           # 构建并压缩
```

## 📁 目录结构

```
my-blog/
├── content/            # 文章内容
│   ├── posts/         # 博客文章
│   ├── about.md       # 关于页面
│   └── search.md      # 搜索页面
├── themes/            # 主题
│   └── hugo-PaperMod/ # PaperMod 主题
├── static/            # 静态资源（图片等）
│   └── images/
├── hugo.toml          # 配置文件
└── README.md
```

## ⚙️ 配置说明

主要配置都在 `hugo.toml` 文件中，你可以修改：

- `title`: 博客标题
- `baseURL`: 博客地址（部署后改成你的域名）
- `params.description`: 博客描述
- `params.author`: 作者名
- `params.profileMode.subtitle`: 首页副标题

## 🎨 自定义

### 修改头像

将你的头像图片放到 `static/images/avatar.png`。

### 添加社交链接

在 `hugo.toml` 的 `[params.socialIcons]` 部分添加：

```toml
[[params.socialIcons]]
  name = "twitter"
  url = "https://twitter.com/你的账号"

[[params.socialIcons]]
  name = "email"
  url = "mailto:你的邮箱"
```

## 📚 更多资源

- [Hugo 官方文档](https://gohugo.io/documentation/)
- [PaperMod 主题文档](https://github.com/adityatelange/hugo-PaperMod/wiki)
- [Cloudflare Pages 文档](https://developers.cloudflare.com/pages/)

## 📄 License

MIT

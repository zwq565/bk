---
title: "Cloudflare Pages 搭建博客完全指南"
date: 2026-06-22T14:00:00+08:00
draft: false
tags: ["教程", "Cloudflare", "博客"]
categories: ["技术"]
description: "从零开始，教你用 Cloudflare Pages 免费搭建一个高性能静态博客。"
---

## 为什么选择 Cloudflare Pages？

Cloudflare Pages 是目前最好的静态网站托管平台之一，优点包括：

1. **完全免费**：个人使用完全足够
2. **全球 CDN**：访问速度快，全球秒开
3. **自动部署**：推送代码自动构建部署
4. **无限带宽**：不用担心流量超限
5. **免费 SSL**：自动配置 HTTPS

## 准备工作

在开始之前，你需要：

- 一个 GitHub 账号
- 一个 Cloudflare 账号
- 安装 Git 和 Hugo

## 部署步骤

### 1. 创建 GitHub 仓库

在 GitHub 上新建一个仓库，命名为 `my-blog`。

### 2. 初始化 Hugo 项目

```bash
hugo new site my-blog
cd my-blog
git init
```

### 3. 添加主题

```bash
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/hugo-PaperMod
```

### 4. 配置 Cloudflare Pages

登录 Cloudflare 控制台，进入 **Workers & Pages** → **Create application** → **Pages** → **Connect to Git**。

构建设置：

- **Framework preset**: Hugo
- **Build command**: `hugo`
- **Build output directory**: `public`

### 5. 环境变量（可选但推荐）

添加环境变量：

- **HUGO_VERSION**: `0.143.1`（指定 Hugo 版本，避免构建失败）

## 常用命令

```bash
hugo server -D  # 本地预览，包含草稿
hugo new posts/文章标题.md  # 新建文章
hugo  # 构建生产版本
```

## 总结

Cloudflare Pages + Hugo 的组合非常适合个人博客，搭建简单，维护成本低，访问速度快。推荐大家尝试！

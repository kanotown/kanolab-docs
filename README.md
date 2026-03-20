# Kano Lab Docs
加納研究室の資料置場

## 概要
このリポジトリは、加納研究室のドキュメントサイトのソースコードです。
研究資料、技術文書、チュートリアルなどを管理・公開しています。

## サイト
公開サイト: [https://docs.kano-lab.com](https://docs.kano-lab.com)

## 構成
```
kanolab-docs/
├── docs/              # ドキュメントファイル
├── .github/           # GitHub Actions設定
│   └── workflows/     # ワークフロー定義
└── README.md          # このファイル
```

## ビルドとデプロイ

### 自動デプロイ方式
`main` ブランチに push すると、GitHub Actions が自動的にビルドを実行し、GitHub Pages 経由で [docs.kano-lab.com](https://docs.kano-lab.com) に公開されます。
**ユーザーがローカルでビルドする必要はありません。**

SSG: [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

### デプロイフロー
1. `docs/` 以下のMarkdownファイルを編集
2. `main` ブランチに push
3. GitHub Actions が自動ビルド・デプロイを実行

## 編集方法
`docs/` 以下のMarkdownファイルを編集し、`main` ブランチに push するだけです。

### クラウド上で編集（推奨）
[coder.kano-lab.com](https://coder.kano-lab.com) にアクセスし、MkDocs テンプレートのワークスペースを使うことで、ブラウザ上で編集できます。

### ローカルで編集
1. リポジトリをクローン
```bash
git clone https://github.com/kano-lab/kanolab-docs.git
cd kanolab-docs
```

2. 必要なツールのインストール
```bash
pip install -r requirements.txt
```

3. ローカルサーバーの起動
```bash
mkdocs serve
```

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
├── .gitea/            # Gitea Actions設定
│   └── workflows/     # ワークフロー定義
└── README.md          # このファイル
```

## 自動デプロイ
このリポジトリは Gitea Actions を使用した自動デプロイに対応しています。  
`main` ブランチへのプッシュ時に自動的にサイトがデプロイされます。

### デプロイフロー
1. `main` ブランチへプッシュ
2. Gitea Actions が自動実行
3. ドキュメントをビルド
4. サーバーへ自動デプロイ

## 開発環境
### ローカル開発
1. リポジトリをクローン
```bash
git clone https://gitea.example.com/kano-lab/kanolab-docs.git
cd kanolab-docs
```

2. 必要なツールのインストール
```bash
# 静的サイトジェネレーター（例: MkDocs）をインストール
pip install mkdocs
# または
npm install -g @vuepress/cli
```

3. ローカルサーバーの起動
```bash
mkdocs serve
# または
vuepress dev docs
```

## 貢献方法
1. このリポジトリをフォーク（Gitea上で）
2. 新しいブランチを作成 (`git checkout -b feature/your-feature`)
3. 変更をコミット (`git commit -m 'Add some feature'`)
4. ブランチにプッシュ (`git push origin feature/your-feature`)
5. プルリクエストを作成（Gitea上で）

## Gitea Actions の設定
`.gitea/workflows/deploy.yml` に自動デプロイの設定が含まれています。  
Giteaのリポジトリ設定で以下のシークレット変数を設定してください：

- `FTP_SERVER`: FTPサーバーのホスト名（例: ftp.example.com）
- `FTP_USERNAME`: FTPユーザー名
- `FTP_PASSWORD`: FTPパスワード

## ライセンス
研究室内部資料のため、適切な許可なく外部への公開は禁止されています。
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

## ビルドとデプロイ

### ローカルビルド方式
このリポジトリはローカルでビルドした後、FTPで自動デプロイする方式を採用しています。
SSG: [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 

### デプロイフロー
1. ローカルでドキュメントをビルド
   ```bash
   # Windows
   build-and-deploy.bat
   
   # Linux/Mac
   ./build-and-deploy.sh
   ```

2. ビルド結果（`/site`ディレクトリ）をコミット
   ```bash
   git add site/
   git commit -m "Update documentation"
   git push origin main
   ```

3. Gitea Actions が自動的にFTPデプロイを実行

## 開発環境
### ローカル開発
1. リポジトリをクローン
```bash
git clone https://gitea.example.com/kano-lab/kanolab-docs.git
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

4. ビルド
```bash
mkdocs build
```

## 貢献方法
1. このリポジトリをフォーク（Gitea上で）
2. 新しいブランチを作成 (`git checkout -b feature/your-feature`)
3. 変更をコミット (`git commit -m 'Add some feature'`)
4. ブランチにプッシュ (`git push origin feature/your-feature`)
5. プルリクエストを作成（Gitea上で）

## Gitea Actions の設定
`.gitea/workflows/deploy.yml` に自動デプロイの設定が含まれています。  
以下のシークレット変数が設定されています。

- `FTP_SERVER`: FTPサーバーのホスト名
- `FTP_USERNAME`: FTPユーザー名
- `FTP_PASSWORD`: FTPパスワード

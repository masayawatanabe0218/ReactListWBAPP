# プロジェクトルートにDockerfileを作成し、次のように記述します。

# ベースとなるDockerイメージを指定
FROM node:14

# ワーキングディレクトリを設定
WORKDIR /app

# 必要なファイルをコンテナにコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースをコンテナにコピー
COPY . .

# ポート3000を開放
EXPOSE 3000

# アプリケーションを起動
CMD ["npm", "start"]

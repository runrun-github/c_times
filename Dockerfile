# Stage 1: Build stage
FROM ruby:3.1.2-alpine3.15 AS build

WORKDIR /rails

# 必要なパッケージのインストール
RUN apk update && apk add --no-cache build-base

# アプリケーションのコードをコピー
COPY . .

# 必要な gems をインストール
RUN bundle install

# アセットのプリコンパイル
RUN bundle exec bootsnap precompile app/ lib/
RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

# Stage 2: Production stage
FROM ruby:3.1.2-alpine3.15 AS production

WORKDIR /rails

# 必要なパッケージをインストール（必要に応じて）
RUN apk update && apk add --no-cache bash

# ビルド済みの gems とアセットをコピー
COPY --from=build /usr/local/bundle /usr/local/bundle
COPY --from=build /rails /rails

# root ユーザーに切り替えてから chmod を実行
USER root
RUN chmod +x /usr/bin/docker-entrypoint.sh

# 作業ユーザーを rails に戻す
USER rails

# Entrypoint の設定
COPY docker-entrypoint.sh /usr/bin/
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]

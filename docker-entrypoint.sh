#!/bin/bash
set -e

# 本番環境用にデータベースを作成・マイグレーション
echo "Running database migrations..."
bundle exec rails db:migrate

# サーバーを起動
exec "$@"
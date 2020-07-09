# awesome events

これは、パーフェクトRuby on Rails第2版の第6章以降で作成されたサンプルアプリです。

イベント情報を登録／編集したり、イベントに参加登録したりできます。

## 前提条件

次のライブラリをインストールしておいてください。詳しくは書籍を参考にしてください。

* Ruby 2.6.6
* Google Chrome
* Node.js
* Yarn
* libvips
* Elasticsearch
  * Japanese (kuromoji) Analysis Plugin

## セットアップ方法

```sh
https://github.com/perfect-ruby-on-rails/awesome_events.git
cd awesome_events
bundle install
yarn install
bin/rails db:setup
```

第6章 OAuthを利用して「GitHubでログイン」機能を作る を参考に、GitHubアプリケーションを登録します。手に入れたClient IDとClient Secretを`config/initializers/omniauth.rb`に設定します。

次のコマンドでElasticsearchを起動します

```sh
elasticsearch
```

次のコマンドでサーバが立ち上がり、 http://localhost:3000 でアクセスできます。

```sh
./bin/rails s
```

## テストの実行方法

### システムテストの実行方法

elasticsearchを起動した状態で次のコマンドを実行します。

```sh
bin/rails test:system
```

### システムテスト以外のテストの実行方法

次のコマンドを実行します。

```sh
bin/rails test
```


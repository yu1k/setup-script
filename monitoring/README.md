# monitoring

監視サーバの構築ファイル

## How to use

```
$ docker-compose build --no-cache
```

構築時にイメージのキャッシュを使わない

```
$ docker-compose up -d
```

コンテナをデタッチモードで起動する

```
$ docker-compose down
```

```
$ docker-compose restart
```

コンテナを再起動する

コンフィグの .yml ファイルを修正した際は restart させる

```
$ docker-compose restart [サービス名]
```

特定のコンテナを指定して再起動する

```
$ docker-compose down
$ docker-compose build --pull [サービス名]
$ docker-compose up -d
```

コンテナのイメージを更新する
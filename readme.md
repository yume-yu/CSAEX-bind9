# Centos6+bind9 on Docker
大学の実験でbind9を使ったときに練習した痕跡。これってdockerにcommitするほどの実用性は無いので。

## 使い方
```
//イメージをビルド
$ docker build -t hoge .
//起動
$ docker run hoge
```

## ファイル
* Dockerfile

	`Centos:6`イメージに`bind bind-util iproute`をインストールして設定ファイルをコピー、runするときにサービススタートするところまで書いてある。
* named.conf

	bindの設定ファイル。基本的に教科書どおり書いてある。コメントは配布されたconf譲り。`loacl.teu.ac.jp`zoneが設定されている。
* loacl.teu.ac.jp.db

	zoneの設定ファイル。現状は自分自身を指す`srv1.teu.ac.jp`の記述あり。ipアドレスが変わってたら要変更。

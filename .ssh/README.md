# .ssh

SSH接続でのクライアント側に置く、接続先設定のテンプレート

~/.ssh/config

```
Host server
    HostName [ホスト名orIPアドレス]
    User [ユーザ名]
    Port [ポート番号]
    IdentityFile [秘密鍵ファイルへのPATH]
    ServerAliveInterval 60
    ServerAliveCountMax 3
```

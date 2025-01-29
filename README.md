# itamae-sandbox

## AWS EC2 に SSM で Itamae を反映

以下の設定を `~/.ssh/config` に記載します。

```
host i-* mi-*
  ProxyCommand sh -c "aws ssm start-session --target %h --document-name AWS-StartSSHSession --parameters 'portNumber=%p' --region ap-northeast-1"
```

実行コマンド

```sh
$ bin/itamae apply i-xxxxxxxxxx --role batch --dry-run
```

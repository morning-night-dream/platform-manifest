# platform-manifest

## initialize

1. [age](https://github.com/FiloSottile/age)で鍵を生成

```
age-keygen
```

2. 公開鍵を`Makefile`の`encrypt`の`AGE_PUBLIC_KEY`に設定

3. 秘密鍵を`Octeto`の`Settings` > `Secrets`に、`SOPS_AGE_KEY`という名前で設定

## Change secret

1. `secret.yml`の`data.{シークレット名}`を新しい値に書き換える
2. `make encrypt`を実行

## decode secret value

```sh
echo -n 'pMnnWGgA9X2-SuzzRuDnW3DNaKrcw8' | base64
```

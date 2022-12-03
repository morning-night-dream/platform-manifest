# platform-manifest

## initialize

1. [age](https://github.com/FiloSottile/age)で鍵を生成

```
age-keygen
```

2. 公開鍵を`Makefile`の`encrypt`の`--age`の後に設定

3. 秘密鍵を`Octeto`の`Settings` > `Secrets`に、`SOPS_AGE_KEY`という名前で設定

## decode secret value

```sh
echo -n 'pMnnWGgA9X2-SuzzRuDnW3DNaKrcw8' | base64
```

# 環境構築
```
# イメージのビルド
 docker build -t イメージ名 .
 
# コンテナ立ち上げ
docker run -p 3000:3000 --mount "type=bind,src=$HOME/workspace/react/sample,target=/sample" sample
```
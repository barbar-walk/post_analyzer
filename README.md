# post_analyzer
Twitter 投稿解析器

## とりあえずやりたいこと

- 期間内の自分の投稿に対して、誰が、何件「いいね」をつけてくれたかカウントする。
- 「いいね」をつけてくれた方が、フォロワーなのか、相互フォローしているのか、通りすがりの方なのか、わかるようにする。
- カウント結果をCSVファイルでダウンロードする。

## 実現方法

- とりあえず、画面なし。WebAPIで提供。URLパラメータに「期間」と「TwitterID」入れてリクエストしたらCSVがダウンロードされる感じ。
  - Oauth不要のアプリにしたい。
    - アプリケーション単独認証 | Docs | Twitter Developer https://developer.twitter.com/ja/docs/authentication/oauth-2-0/application-only
      - 「アプリケーション単独認証」これが該当するっぽい。
      - 「Authentication methods supported by this endpoint」が「OAuth 2.0 Bearer token」だったらOauth不要。

- サーバ、かごや。
- アーキテクチャ、Python FastAPI。

## 操作方法


### 開発者向け操作方法

#### ▼起動

```
> cd ./local
> docker-compose up -d --build
```

WebAPIドキュメント：  
http://localhost:8000/docs

#### ▼docker起動確認

```
>docker ps
CONTAINER ID   IMAGE               COMMAND                  CREATED         STATUS         PORTS                    NAMES
34c0d4a0aeb5   post_analyzer_api   "uvicorn main:app --…"   3 minutes ago   Up 3 minutes   0.0.0.0:8000->8000/tcp   api
```

#### ▼停止

```
> docker stop api
```

# post_analyzer
Twitter 投稿解析器

## とりあえずやりたいこと

- 期間内の自分の投稿に対して、誰が、何件「いいね」をつけてくれたかカウントする。
- 「いいね」をつけてくれた方が、フォロワーなのか、相互フォローしているのか、通りすがりの方なのか、わかるようにする。
- カウント結果をCSVファイルでダウンロードする。

## 実現方法

- とりあえず、画面なし。WebAPIで提供。URLパラメータに「期間」と「TwitterID」入れてリクエストしたらCSVがダウンロードされる感じ。
  - Oauth不要のアプリにしたい。
- サーバ、かごや。
- アーキテクチャ、Python FastAPI。

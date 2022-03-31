# LeftClickDetection
左クリックを検知するためのデータパック

## 対応バージョン
- 1.18.1

## 検知を有効化
実行者の左クリック検知を有効化します

### 呼び出し
```mcfunction
function left_click_detection:api/enable
```

### 例
```mcfunction
# 実行者がスニークしていれば、左クリック検知を有効化する
execute if predicate example:is_sneaking run function left_click_detection:api/enable
```

## 検知を無効化
実行者の左クリック検知を無効化します

### 呼び出し
```mcfunction
function left_click_detection:api/disable
```

### 例
```mcfunction
# 実行者がスニークしていなければ、左クリック検知を無効化する
execute unless predicate example:is_sneaking run function left_click_detection:api/disable
```

## 左クリック時の動作を設定
1. `data/left_click_detection/tags/functions/callback.json` に、左クリック時に呼び出されるファイルを追加します
```json
{
    "values": [
        "example:on_left_click"
    ]
}
```

2. 追加したファイル内でそれぞれの動作を設定します
```mcfunction
#> example:on_left_click

# メッセージを表示する
tellraw @s "今、左クリックしましたね！"
```

## 注意
- このデータパックではエンティティへの攻撃を利用した左クリック検知を行っています  
このため、検知を有効にしているプレイヤーはいくつかの行動ができなくなります（例: チェストを開ける）

## 既知のバグ
- チャンクを跨いだエンティティの方向を向いて行った左クリックを検知することができない

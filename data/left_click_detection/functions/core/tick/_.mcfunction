#> left_click_detection:core/tick/_
#
# tick時に実行される
#
# @within tag/function minecraft:tick

# エンティティを削除
    execute if entity @e[type=minecraft:magma_cube, tag=LCD.Entity, limit=1] run tp @e[type=minecraft:magma_cube, tag=LCD.Entity] ~ -1000 ~
    execute if entity @e[type=minecraft:magma_cube, tag=LCD.Entity, limit=1] run kill @e[type=minecraft:magma_cube, tag=LCD.Entity]

# 有効なプレイヤーが存在していれば、検知用のエンティティを更新
    execute if entity @a[tag=LCD.Player, limit=1] as @a[tag=LCD.Player] at @s run function left_click_detection:core/tick/update

# 左クリックを確認
    execute if entity @a[advancements={left_click_detection:handler=true}, limit=1] as @a[advancements={left_click_detection:handler=true}] run function left_click_detection:core/handler

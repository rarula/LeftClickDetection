#> left_click_detection:core/tick/update
#
# 検知用のエンティティを更新する
#
# @within function left_click_detection:core/tick/_

# エンティティを召喚
    execute positioned ~ ~-0.0 ~ anchored eyes run summon minecraft:magma_cube ^ ^ ^ {Tags:["LCD.Entity"], Team:"LeftClickDetection", NoAI:true, NoGravity:true, Silent:true, DeathTime:19s, Size:0}
    execute positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:magma_cube ^ ^ ^ {Tags:["LCD.Entity"], Team:"LeftClickDetection", NoAI:true, NoGravity:true, Silent:true, DeathTime:19s, Size:0}

# 周囲にブロックが無ければ更に召喚
    execute positioned ~ ~-0.0 ~ anchored eyes positioned ^ ^ ^0.5 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #left_click_detection:air if block ~0.75 ~ ~ #left_click_detection:air if block ~-0.75 ~ ~ #left_click_detection:air if block ~ ~ ~0.75 #left_click_detection:air if block ~ ~ ~-0.75 #left_click_detection:air if block ~0.75 ~ ~0.75 #left_click_detection:air if block ~-0.75 ~ ~0.75 #left_click_detection:air if block ~0.75 ~ ~-0.75 #left_click_detection:air if block ~-0.75 ~ ~-0.75 #left_click_detection:air positioned as @s positioned ~ ~-0.0 ~ anchored eyes run summon minecraft:magma_cube ^ ^ ^0.5 {Tags:["LCD.Entity"], Team:"LeftClickDetection", NoAI:true, NoGravity:true, Silent:true, DeathTime:19s, Size:0}
    execute positioned ~ ~-0.5 ~ anchored eyes positioned ^ ^ ^0.5 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #left_click_detection:air if block ~0.75 ~ ~ #left_click_detection:air if block ~-0.75 ~ ~ #left_click_detection:air if block ~ ~ ~0.75 #left_click_detection:air if block ~ ~ ~-0.75 #left_click_detection:air if block ~0.75 ~ ~0.75 #left_click_detection:air if block ~-0.75 ~ ~0.75 #left_click_detection:air if block ~0.75 ~ ~-0.75 #left_click_detection:air if block ~-0.75 ~ ~-0.75 #left_click_detection:air positioned as @s positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:magma_cube ^ ^ ^0.5 {Tags:["LCD.Entity"], Team:"LeftClickDetection", NoAI:true, NoGravity:true, Silent:true, DeathTime:19s, Size:0}

#> left_click_detection:core/handler
#
# 左クリック時に呼び出される
#
# @within function left_click_detection:core/tick/_

# コールバック
    execute at @s run function #left_click_detection:callback

# リセット
    advancement revoke @s only left_click_detection:handler

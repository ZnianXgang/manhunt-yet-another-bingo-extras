# 缓存一次最新坐标（用于跨维度追踪）
execute unless entity @s[advancements={mh:detect/changed_dimension=true}] \
    unless function mh:gu/generate run function mh:player/pos/sync_current with storage gu:main

# 进度界面区分队伍
execute if entity @s[team=hunters] run advancement grant @s only mh:gui/hunter
execute if entity @s[team=hunters] run advancement revoke @s only mh:gui/runner
execute if entity @s[team=runners] run advancement grant @s only mh:gui/runner
execute if entity @s[team=runners] run advancement revoke @s only mh:gui/hunter

# 杀死ui物品
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{"mhUI":true}}}}]

# 让进度可以重新触发
advancement revoke @s only mh:detect/every_sec
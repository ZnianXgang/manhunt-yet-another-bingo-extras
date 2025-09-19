team add hunters "猎人"
team add runners "逃者"

# settings
scoreboard objectives add mh.settings dummy
execute unless score 已应用默认设置 mh.settings matches 1 run function mh:setting/default_setting

# 其他
scoreboard objectives add mh.temp dummy
scoreboard objectives add mh.died.listener minecraft.custom:deaths
scoreboard objectives add mh.pdb.querytime dummy
scoreboard objectives add mh.pdb.querydimension dummy
bossbar add mh:compass_timer ""
bossbar set mh:compass_timer color red
bossbar add mh:freeze ""

# 计划任务
schedule function mh:schedule_task/keep_freeze 1s replace
schedule function mh:schedule_task/keep_update 1t replace
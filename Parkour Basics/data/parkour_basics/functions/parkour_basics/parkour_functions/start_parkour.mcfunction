function parkour_basics:parkour_basics/parkour_functions/stop_parkour
execute run tag @p add parkour
execute run gamemode adventure @p[tag=parkour]
execute run scoreboard players set @p[tag=parkour] Level 0
execute at @e[tag=start_pos] as @e[tag=start_pos] run tp @p[tag=parkour] ~ ~ ~
execute at @p[tag=parkour] as @p[tag=parkour] run spawnpoint @p[tag=parkour] ~ ~ ~
execute at @e[tag=reset] as @e[tag=reset] anchored feet run setblock ~ ~-1 ~ raw_gold_block
execute at @e[tag=checkpoint] run setblock ~ ~-1 ~ raw_gold_block
tellraw @p[tag=parkour] ["",{"text":"You started the parkour! Click ","color":"green"},{"text":"here","color":"red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/stop_parkour"}},{"text":" to stop.","color":"green"}]
clear @p
execute run kill @e[tag=reset]
execute run kill @e[tag=checkpoint]
function parkour_basics:parkour_basics/parkour_functions/stop_parkour
execute run scoreboard players set @p parkour 1
execute run gamemode adventure @p[scores={parkour=1}]
execute run scoreboard players set @p[scores={parkour=1}] Level 0
execute at @e[tag=start_pos] as @e[tag=start_pos] run tp @p[scores={parkour=1}] ~ ~ ~
execute at @p[scores={parkour=1}] as @p[scores={parkour=1}] run spawnpoint @p[scores={parkour=1}] ~ ~ ~
execute at @e[tag=reset] as @e[tag=reset] anchored feet run setblock ~ ~-1 ~ raw_gold_block
execute at @e[tag=checkpoint] run setblock ~ ~-1 ~ raw_gold_block
tellraw @p[scores={parkour=1}] ["",{"text":"You started the parkour! Click ","color":"green"},{"text":"here","color":"red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/stop_parkour"}},{"text":" to stop.","color":"green"}]
clear @p
execute run kill @e[tag=reset]
execute run kill @e[tag=checkpoint]
execute at @p[scores={parkour=1}] as @p[scores={parkour=1}] align xyz positioned ~0.5 ~ ~0.5 anchored feet run summon marker ~ ~ ~ {CustomName:'"checkpoint"',CustomNameVisible:0,Tags:["checkpoint"]}
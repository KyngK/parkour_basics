execute run gamemode creative @p[scores={parkour=1,admin=1}]
execute run scoreboard players set @p[scores={parkour=1}] Level 0
execute at @e[tag=reset] as @e[tag=reset] anchored feet run setblock ~ ~-1 ~ raw_gold_block
execute at @e[tag=checkpoint] run setblock ~ ~-1 ~ raw_gold_block
scoreboard players reset @p[scores={parkour=1}] Level 
execute run scoreboard players set @p parkour 0
kill @e[tag=reset]
kill @e[tag=checkpoint]
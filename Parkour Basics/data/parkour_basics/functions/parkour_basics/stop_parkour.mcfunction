execute run gamemode creative @p[tag=parkour]
execute run scoreboard players set @p[tag=parkour] Level 0
execute at @e[tag=start_pos] as @e[tag=start_pos] run tp @p[tag=parkour] ~ ~ ~
execute at @e[tag=reset] as @e[tag=reset] anchored feet run setblock ~ ~-1 ~ raw_gold_block
execute at @e[tag=checkpoint] run setblock ~ ~-1 ~ raw_gold_block
execute run tag @p remove parkour
kill @e[tag=reset]
kill @e[tag=checkpoint]
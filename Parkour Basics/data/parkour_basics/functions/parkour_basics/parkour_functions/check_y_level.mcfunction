execute as @p[tag=parkour] store result score @s ylev run data get entity @s Pos[1]
execute as @p[tag=parkour,scores={ylev=..-70}] run tp @s @e[tag=checkpoint,limit=1]
execute as @p[scores={parkour=1}] store result score @s ylev run data get entity @s Pos[1]
execute as @p[scores={parkour=1,ylev=..-70}] run tp @s @e[tag=checkpoint,limit=1]
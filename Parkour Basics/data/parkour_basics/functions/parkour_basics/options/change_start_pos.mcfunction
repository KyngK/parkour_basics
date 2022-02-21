tag @p add changing_start_pos
execute as @e[tag=start_pos] at @e[tag=start_pos] run setblock ~ ~-1 ~ air
execute as @e[tag=start_pos] run kill @s
execute as @e[tag=change_start_pos] run tag @s add start_pos
execute as @e[tag=change_start_pos] run tag @s remove change_start_pos
execute as @e[tag=start_pos] at @e[tag=start_pos] run tp @s ~ ~1 ~
tellraw @p[tag=changing_start_pos] {"text":"The start position has been set!","color":"green"}
tag @p remove changing_start_pos
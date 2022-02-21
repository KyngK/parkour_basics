tag @p add changing_end_pos
execute as @e[tag=end_pos] at @e[tag=end_pos] run setblock ~ ~-1 ~ air
execute as @e[tag=end_pos] run kill @s
execute as @e[tag=change_end_pos] run tag @s add end_pos
execute as @e[tag=change_end_pos] run tag @s remove change_end_pos
execute as @e[tag=end_pos] at @e[tag=end_pos] run tp @s ~ ~1 ~
tellraw @p[tag=changing_end_pos] {"text":"The end position has been set!","color":"green"}
tag @p remove changing_end_pos
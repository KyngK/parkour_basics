execute if entity @p[tag=admin] run tag @p add changing_start_pos
execute if entity @p[tag=admin] run execute as @e[tag=start_pos] at @e[tag=start_pos] run setblock ~ ~-1 ~ air
execute if entity @p[tag=admin] run execute as @e[tag=start_pos] run kill @s
execute if entity @p[tag=admin] run execute as @e[tag=change_start_pos] run tag @s add start_pos
execute if entity @p[tag=admin] run execute as @e[tag=change_start_pos] run tag @s remove change_start_pos
execute if entity @p[tag=admin] run execute as @e[tag=start_pos] at @e[tag=start_pos] run tp @s ~ ~1 ~
execute if entity @p[tag=admin] run tellraw @p[tag=changing_start_pos] {"text":"The start position has been set!","color":"green"}
execute if entity @p[tag=admin] run tag @p remove changing_start_pos
tellraw @p[tag=!admin] ["",{"text":"You do not have permission to do this!","color":"red"}]
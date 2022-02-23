execute if entity @p[tag=admin] run tag @p add changing_end_pos
execute if entity @p[tag=admin] run execute as @e[tag=end_pos] at @e[tag=end_pos] run setblock ~ ~-1 ~ air
execute if entity @p[tag=admin] run execute as @e[tag=end_pos] run kill @s
execute if entity @p[tag=admin] run execute as @e[tag=change_end_pos] run tag @s add end_pos
execute if entity @p[tag=admin] run execute as @e[tag=change_end_pos] run tag @s remove change_end_pos
execute if entity @p[tag=admin] run execute as @e[tag=end_pos] at @e[tag=end_pos] run tp @s ~ ~1 ~
execute if entity @p[tag=admin] run tellraw @p[tag=changing_end_pos] {"text":"The end position has been set!","color":"green"}
execute if entity @p[tag=admin] run tag @p remove changing_end_pos
tellraw @p[tag=!admin] ["",{"text":"You do not have permission to do this!","color":"red"}]
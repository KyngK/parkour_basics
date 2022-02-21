execute if block ~ ~ ~ netherite_block positioned ~ ~ ~ run function parkour_basics:parkour_basics/raycasting/end_pos_raycasting/hit_block
scoreboard players add #distance end_pos 1
execute if score #hit end_pos matches 0 if score #distance end_pos matches ..100 positioned ^ ^ ^0.1 run function parkour_basics:parkour_basics/raycasting/end_pos_raycasting/ray
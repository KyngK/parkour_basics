execute if block ~ ~ ~ emerald_block positioned ~ ~ ~ run function parkour_basics:parkour_basics/raycasting/start_pos_raycasting/hit_block
scoreboard players add #distance start_pos 1
execute if score #hit start_pos matches 0 if score #distance start_pos matches ..100 positioned ^ ^ ^0.1 run function parkour_basics:parkour_basics/raycasting/start_pos_raycasting/ray
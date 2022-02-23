function parkour_basics:parkour_basics/join
function parkour_basics:parkour_basics/parkour_functions/check_y_level
function parkour_basics:parkour_basics/check_start_pos
function parkour_basics:parkour_basics/check_end_pos
execute as @a[tag=admin,scores={placed_netherite_block=1}] at @s anchored eyes run function parkour_basics:parkour_basics/raycasting/end_pos_raycasting/start_ray
execute as @a[tag=admin,scores={placed_emerald_block=1}] at @s anchored eyes run function parkour_basics:parkour_basics/raycasting/start_pos_raycasting/start_ray
execute at @p[tag=parkour] as @p[tag=parkour] anchored feet if block ~ ~-1 ~ raw_gold_block run function parkour_basics:parkour_basics/checkpoint
execute at @p[tag=parkour] as @p[tag=parkour] anchored feet align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ netherite_block if entity @e[tag=end_pos,distance=..1] run function parkour_basics:parkour_basics/parkour_functions/end_parkour
effect give @p[tag=parkour] saturation 1000000 255 true
function parkour_basics:parkour_basics/join
function parkour_basics:parkour_basics/parkour_functions/check_y_level
function parkour_basics:parkour_basics/parkour_functions/check_y_level
function parkour_basics:parkour_basics/check_start_pos
function parkour_basics:parkour_basics/check_end_pos
execute at @p[tag=parkour] as @p[tag=parkour] anchored feet if block ~ ~-1 ~ raw_gold_block run function parkour_basics:parkour_basics/checkpoint
execute at @p[tag=parkour] as @p[tag=parkour] anchored feet if block ~ ~-1 ~ netherite_block align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=end_pos,distance=..1] run function parkour_basics:parkour_basics/parkour_functions/end_parkour
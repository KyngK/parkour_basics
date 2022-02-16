function parkour_basics:parkour_basics/join
function parkour_basics:parkour_basics/check_y_level
execute at @p as @p anchored feet if block ~ ~-1 ~ raw_gold_block run function parkour_basics:parkour_basics/checkpoint
execute run function parkour_basics:parkour_basics/check_y_level
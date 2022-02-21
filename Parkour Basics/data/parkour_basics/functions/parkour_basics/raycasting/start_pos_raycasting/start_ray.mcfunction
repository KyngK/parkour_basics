tag @p add detect_start_pos
scoreboard players set #hit start_pos 0
scoreboard players set #distance start_pos 0
execute anchored eyes run function parkour_basics:parkour_basics/raycasting/start_pos_raycasting/ray
scoreboard players set @p placed_emerald_block 0
tag @p remove detect_start_pos
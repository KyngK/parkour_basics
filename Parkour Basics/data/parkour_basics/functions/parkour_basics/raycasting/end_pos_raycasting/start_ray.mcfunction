tag @p add detect_end_pos
scoreboard players set #hit end_pos 0
scoreboard players set #distance end_pos 0
execute anchored eyes run function parkour_basics:parkour_basics/raycasting/end_pos_raycasting/ray
scoreboard players set @p placed_netherite_block 0
tag @p remove detect_end_pos
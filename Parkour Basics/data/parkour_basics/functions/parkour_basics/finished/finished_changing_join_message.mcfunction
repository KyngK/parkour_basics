tag @p[scores={admin=1},tag=changing_join_message] remove changing_join_message
tellraw @p[scores={admin=1}] ["",{"text":"Your join message has resultfully been changed!","color":"green"}]
data modify entity @e[tag=MapData,limit=1] data.Title set from entity @p[scores={admin=1}] Inventory
function parkour_basics:parkour_basics/parkour_functions/stop_parkour
clear @p[scores={admin=1}]
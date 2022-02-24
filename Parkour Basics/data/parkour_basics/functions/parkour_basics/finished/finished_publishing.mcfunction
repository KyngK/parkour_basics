tag @p[scores={admin=1},tag=publishing] remove publishing
tellraw @p[scores={admin=1}] ["",{"text":"Your map has been published. Feel free to send it to people!","color":"green"}]
data modify entity @e[tag=MapData,limit=1] data.Title set from entity @p[scores={admin=1}] Inventory
execute if score #published MapData matches 0 run scoreboard players set #published MapData 1
function parkour_basics:parkour_basics/parkour_functions/stop_parkour
clear @p[scores={admin=1}]
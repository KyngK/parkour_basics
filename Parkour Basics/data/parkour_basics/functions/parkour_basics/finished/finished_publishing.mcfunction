tag @p[scores={admin=1},tag=publishing] remove publishing
tellraw @p[scores={admin=1}] ["",{"text":"Your map has been published. Feel free to send it to people!","color":"green"}]
data modify entity @e[tag=MapData,limit=1] data.Title set from entity @p[scores={admin=1}] Inventory
clear @p[scores={admin=1}]
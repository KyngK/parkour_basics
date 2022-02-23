tag @p[tag=admin,tag=publishing] remove publishing
tellraw @p[tag=admin] ["",{"text":"Your map has been published. Feel free to send it to people!","color":"green"}]
data modify entity @e[tag=MapData,limit=1] data.Title set from entity @p[tag=admin] Inventory
clear @p[tag=admin]
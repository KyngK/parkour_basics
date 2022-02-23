tag @p[tag=admin,tag=publishing] remove publishing
tellraw @p ["",{"text":"Your join message has been set!","color":"green"}]
data modify entity @e[tag=MapData,limit=1] data.Title set from entity @p[tag=admin] Inventory
clear @p[tag=admin]
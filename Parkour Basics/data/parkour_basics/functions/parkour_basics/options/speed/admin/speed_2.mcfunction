scoreboard players set #speedAdmin MapData 2
tellraw @p[scores={admin=1}] ["",{"text":"Applied permanent speed "},{"score":{"name":"#speedAdmin","objective":"MapData"}},{"text":" to admin."}]
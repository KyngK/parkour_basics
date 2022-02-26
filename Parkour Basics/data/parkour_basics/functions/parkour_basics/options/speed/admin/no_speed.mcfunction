scoreboard players set #speedAdmin MapData 0
tellraw @p[scores={admin=1}] ["",{"text":"Removed speed from admin."}]
effect clear @p[scores={admin=1}] speed
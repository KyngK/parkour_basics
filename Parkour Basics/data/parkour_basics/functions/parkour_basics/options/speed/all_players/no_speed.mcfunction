scoreboard players set #speedPlayers MapData 0
tellraw @p[scores={admin=1}] ["",{"text":"Removed speed from all players."}]
effect clear @p speed
scoreboard players set #speedPlayers MapData 2
tellraw @p[scores={admin=1}] ["",{"text":"Applied permanent speed "},{"score":{"name":"#speedPlayers","objective":"MapData"}},{"text":" to all players."}]
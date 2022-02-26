execute store result score #doMobSpawning MapData run gamerule doMobSpawning

execute if score #doMobSpawning MapData matches 1 run gamerule doMobSpawning false
execute if score #doMobSpawning MapData matches 0 run gamerule doMobSpawning true

execute if score #doMobSpawning MapData matches 1 run tellraw @p ["",{"text":"Gamerule doMobSpawning is now set to: false"}]
execute if score #doMobSpawning MapData matches 0 run tellraw @p ["",{"text":"Gamerule doMobSpawning is now set to: true"}]
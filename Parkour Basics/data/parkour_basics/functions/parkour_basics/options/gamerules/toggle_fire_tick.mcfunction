execute store result score #doFireTick MapData run gamerule doFireTick

execute if score #doFireTick MapData matches 1 run gamerule doFireTick false
execute if score #doFireTick MapData matches 0 run gamerule doFireTick true

execute if score #doFireTick MapData matches 1 run tellraw @p ["",{"text":"Gamerule doFireTick is now set to: false"}]
execute if score #doFireTick MapData matches 0 run tellraw @p ["",{"text":"Gamerule doFireTick is now set to: true"}]
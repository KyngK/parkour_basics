execute store result score #doDaylightCycle MapData run gamerule doDaylightCycle

execute if score #doDaylightCycle MapData matches 1 run gamerule doDaylightCycle false
execute if score #doDaylightCycle MapData matches 0 run gamerule doDaylightCycle true

execute if score #doDaylightCycle MapData matches 1 run tellraw @p ["",{"text":"Gamerule doDaylightCycle is now set to: false"}]
execute if score #doDaylightCycle MapData matches 0 run tellraw @p ["",{"text":"Gamerule doDaylightCycle is now set to: true"}]
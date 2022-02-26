execute store result score #doWeatherCycle MapData run gamerule doWeatherCycle

execute if score #doWeatherCycle MapData matches 1 run gamerule doWeatherCycle false
execute if score #doWeatherCycle MapData matches 0 run gamerule doWeatherCycle true

execute if score #doWeatherCycle MapData matches 1 run tellraw @p ["",{"text":"Gamerule doWeatherCycle is now set to: false"}]
execute if score #doWeatherCycle MapData matches 0 run tellraw @p ["",{"text":"Gamerule doWeatherCycle is now set to: true"}]
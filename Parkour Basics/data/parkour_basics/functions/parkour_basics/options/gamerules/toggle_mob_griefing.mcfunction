execute store result score #mobGriefing MapData run gamerule mobGriefing

execute if score #mobGriefing MapData matches 1 run gamerule mobGriefing false
execute if score #mobGriefing MapData matches 0 run gamerule mobGriefing true

execute if score #mobGriefing MapData matches 1 run tellraw @p ["",{"text":"Gamerule mobGriefing is now set to: false"}]
execute if score #mobGriefing MapData matches 0 run tellraw @p ["",{"text":"Gamerule mobGriefing is now set to: true"}]
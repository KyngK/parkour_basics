execute store result score #fallDamage MapData run gamerule fallDamage

execute if score #fallDamage MapData matches 1 run gamerule fallDamage false
execute if score #fallDamage MapData matches 0 run gamerule fallDamage true

execute if score #fallDamage MapData matches 1 run tellraw @p ["",{"text":"Gamerule fallDamage is now set to: false"}]
execute if score #fallDamage MapData matches 0 run tellraw @p ["",{"text":"Gamerule fallDamage is now set to: true"}]
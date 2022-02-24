execute at @p[scores={parkour=1}] as @p[scores={parkour=1}] run setblock ~ ~-1 ~ gold_block
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run setblock ~ ~-1 ~ diamond_block
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["reset"]}
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run kill @s
execute at @p[scores={parkour=1}] as @p[scores={parkour=1}] align xyz positioned ~0.5 ~ ~0.5 anchored feet run summon marker ~ ~ ~ {CustomName:'"checkpoint"',CustomNameVisible:0,Tags:["checkpoint"]}
execute at @e[tag=checkpoint] run spawnpoint @p ~ ~ ~
execute run scoreboard players add @p[scores={parkour=1}] Level 1
execute run tellraw @p[scores={parkour=1}] ["",{"text":"You have reached Level ","color":"green"},{"score":{"name":"@p[scores={parkour=1}]","objective":"Level"},"color":"gold"},{"text":"!","color":"green"}]
playsound minecraft:entity.player.levelup player @p[scores={parkour=1}]
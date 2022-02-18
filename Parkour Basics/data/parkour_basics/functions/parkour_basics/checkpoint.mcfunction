execute at @p[tag=parkour] as @p[tag=parkour] run setblock ~ ~-1 ~ gold_block
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run setblock ~ ~-1 ~ diamond_block
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["reset"]}
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run kill @s
execute at @p[tag=parkour] as @p[tag=parkour] align xyz positioned ~0.5 ~ ~0.5 anchored feet run summon marker ~ ~ ~ {CustomName:'"checkpoint"',CustomNameVisible:0,Tags:["checkpoint"]}
execute at @e[tag=checkpoint] as @e[tag=checkpoint] run spawnpoint @p[tag=parkour] ~ ~ ~
execute run scoreboard players add @p[tag=parkour] Level 1
execute run tellraw @p[tag=parkour] ["",{"text":"You have reached Level ","color":"green"},{"score":{"name":"@p[tag=parkour]","objective":"Level"},"color":"gold"},{"text":"!","color":"green"}]
playsound minecraft:entity.player.levelup player @p[tag=parkour]
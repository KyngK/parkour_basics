tag @p[scores={leave=1}] remove init

# Run if published is false
execute if score #published MapData matches 0 run scoreboard players set @p admin 1
execute if score #published MapData matches 1 run tellraw @p[tag=!init] {"entity":"@e[tag=MapData]","nbt":"data.Title[].tag.pages[]","interpret":true}
execute if score #published MapData matches 1 run tellraw @p[tag=!init] ["",{"text":"[Start]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/start_parkour"}},{"text":" ","bold":true,"color":"dark_blue"},{"text":"[Stop]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/stop_parkour"}},{"text":" [Help]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/help_pages/published_help/help_p1"}}]
execute if score #published MapData matches 0 run tellraw @p[scores={admin=1},tag=!init] ["",{"text":"Parkour Basics ","bold":true,"color":"dark_blue"},{"text":"v1.2","bold":true,"color":"dark_red"},{"text":" by ","bold":true,"color":"dark_blue"},{"text":"KyngK","bold":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCuFq91tDyZb7JqzQlqDH37w"}},{"text":"\n"},{"text":"Click ","bold":true,"color":"blue"},{"text":"here","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/help_pages/help_p1"}},{"text":" to learn how to use the datapack!\n       ","bold":true,"color":"blue"},{"text":"[Publish]","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/options/publish_map"}},{"text":"\n","bold":true},{"text":"      ","bold":true,"color":"green"},{"text":"[Test Map]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/start_parkour"}},{"text":" ","bold":true,"color":"dark_blue"},{"text":"[Stop]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/stop_parkour"}}]

# Run if published is true
execute unless score @p[tag=!init] admin matches 1 if score #published MapData matches 1 run clear @p[tag=!init]
execute unless score @p[tag=!init] admin matches 1 if score #published MapData matches 1 at @e[tag=start_pos,limit=1] rotated -90 0 run tp @p[tag=!init,tag=!parkour] ~ ~ ~
execute unless score @p[tag=!init] admin matches 1 if score #published MapData matches 1 run gamemode adventure @p[tag=!init]
execute unless score @p[tag=!init] admin matches 1 run scoreboard players set @p[tag=!init] admin 0

tag @p add init 
scoreboard players set @p[scores={leave=1}] leave 0
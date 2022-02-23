clear @p[tag=admin]
execute if entity @e[tag=!published] run tag @p[tag=admin] add publishing
execute if entity @e[tag=!published] run give @p[tag=admin] writable_book{pages:["Enter your map title and description here. When you're done, click the message in chat. If you want more customization, use this generator: https://minecraft.tools/en/json_text.php"]}
tellraw @p[tag=admin,tag=publishing] ["",{"text":"Open the book, and then click ","color":"green"},{"text":"here","color":"gold","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/finished/finished_publishing"}},{"text":" to set your join message!","color":"green"}]
execute if entity @e[tag=published] run tellraw @p ["",{"text":"This map has already been published!","color":"red"}]
execute if entity @e[tag=!published] run tag @e[tag=MapData] add published
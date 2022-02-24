clear @p[scores={admin=1}]
function parkour_basics:parkour_basics/parkour_functions/stop_parkour
execute if score #published MapData matches 0 run tag @p[scores={admin=1}] add publishing
execute if score #published MapData matches 0 run give @p[scores={admin=1}] writable_book{pages:["Enter your map title and description here. When you're done, click the message in chat. IMPORTANT: You have to use json text! If you don't know how to do that, use this generator!: https://minecraft.tools/en/json_text.php"]}
tellraw @p[scores={admin=1},tag=publishing] ["",{"text":"Open the book, and then click ","color":"green"},{"text":"here","color":"gold","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/finished/finished_publishing"}},{"text":" to set your join message!","color":"green"}]
execute if score #published MapData matches 1 run tellraw @p ["",{"text":"This map has already been published!","color":"red"}]
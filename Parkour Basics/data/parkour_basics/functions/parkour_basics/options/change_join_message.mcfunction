clear @p[scores={admin=1}]
tag @p[scores={admin=1}] add changing_join_message
function parkour_basics:parkour_basics/parkour_functions/stop_parkour
give @p[scores={admin=1},tag=changing_join_message] writable_book{pages:["Enter your map title and description here. When you're done, click the message in chat. IMPORTANT: You have to use json text! If you don't know how to do that, use this generator!: https://minecraft.tools/en/json_text.php"]}
tellraw @p[scores={admin=1},tag=changing_join_message] ["",{"text":"Open the book, and then click ","color":"green"},{"text":"here","color":"gold","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/finished/finished_publishing"}},{"text":" to set your join message!","color":"green"}]
# Set gamerules
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doTraderSpawning false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule mobGriefing false
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
gamerule fallDamage false
time set day

# Summon start and end position markers, as well as MapData marker
summon marker 0.5 -63 0.5 {CustomName:'"start_pos"',CustomNameVisible:0,Tags:["start_pos"]}
summon marker 20.5 -63 0.5 {CustomName:'"end_pos"',CustomNameVisible:0,Tags:["end_pos"]}
summon marker 0 0 0 {CustomName:'"MapData"',CustomNameVisible:0,Tags:["MapData"]}
# [["",{"text":"Parkour Basics ","bold":true,"color":"dark_blue"},{"text":"v1.2","bold":true,"color":"dark_red"},{"text":" by ","bold":true,"color":"dark_blue"},{"text":"KyngK","bold":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCuFq91tDyZb7JqzQlqDH37w"}},{"text":"\n"},{"text":"Click ","bold":true,"color":"blue"},{"text":"here","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/help_pages/help_p1"}},{"text":" to learn how to use the datapack!\n       ","bold":true,"color":"blue"},{"text":"[Publish]","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/options/publish_map"}},{"text":"\n","bold":true},{"text":"      ","bold":true,"color":"green"},{"text":"[Test Map]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/start_parkour"}},{"text":" ","bold":true,"color":"dark_blue"},{"text":"[Stop]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function parkour_basics:parkour_basics/parkour_functions/stop_parkour"}}]

# Add scoreboard objectives
scoreboard objectives add Level dummy "Level"
scoreboard objectives setdisplay sidebar Level
scoreboard players add @p Level 0
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add ylev dummy "ylev"
scoreboard objectives add end_pos dummy "end_pos"
scoreboard objectives add placed_netherite_block minecraft.used:netherite_block "placed_netherite_block"
scoreboard objectives add start_pos dummy "start_pos"
scoreboard objectives add placed_emerald_block minecraft.used:emerald_block "placed_emerald_block"

# Add admin scoreboard
scoreboard objectives add admin dummy "admin"

# Make it so the map isn't published
scoreboard players set #published MapData 0

# Place start and end position blocks
setblock 0 -64 0 emerald_block
setblock 20 -64 0 netherite_block

#Set spawnpoint
setworldspawn 0 -63 0
spawnpoint @p 0 -63 0

# Make it so load function doesn't load anymore
scoreboard players add #first_time MapData 1
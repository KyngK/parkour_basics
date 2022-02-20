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
summon marker 0.5 -63 0.5 {CustomName:'"start_pos"',CustomNameVisible:0,Tags:["start_pos"]}
summon marker 20.5 -63 0.5 {CustomName:'"end_pos"',CustomNameVisible:0,Tags:["end_pos"]}
scoreboard objectives add Level dummy "Level"
scoreboard objectives setdisplay sidebar Level
scoreboard players add @p Level 0
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add ylev dummy "ylev"
scoreboard objectives add end_pos dummy
scoreboard objectives add placed_netherite_block minecraft.used:netherite_block
setblock 0 -64 0 emerald_block
setblock 20 -64 0 netherite_block
setworldspawn 0 -63 0
spawnpoint @p 0 -63 0
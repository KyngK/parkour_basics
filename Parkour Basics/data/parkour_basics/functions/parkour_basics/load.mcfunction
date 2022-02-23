# Add a scoreboard to track map data
scoreboard objectives add MapData dummy "MapData"

# Only run load function when world first generates
execute unless score #first_time MapData matches 1 run function parkour_basics:parkour_basics/real_load
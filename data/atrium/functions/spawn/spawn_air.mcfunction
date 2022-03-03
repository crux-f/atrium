# Grant attunement
advancement grant @p[distance=..10,gamemode=!spectator] only atrium:air_start
#
# If you changed attunements, grant advancement for that
execute as @p[distance=..10,gamemode=!spectator] if entity @s[tag=changed] run advancement grant @s only atrium:new_year_new_me
#
# If you got the same element twice, grant advancement for that
execute as @p[distance=..10,gamemode=!spectator] if entity @s[tag=changed,advancements={atrium:air_memory=true}] run advancement grant @s only atrium:despite_everything
#
# Remove tag
tag @p[distance=..10,gamemode=!spectator] remove changed
#
# Teleport player to appropriate start, then give them the title, particles, sound, and potion effect.
loot give @p[distance=..10,gamemode=!spectator] loot atrium:starting_equipment
execute as @p[distance=..10,gamemode=!spectator] in minecraft:overworld run tp @s 35658.5 290 -3044
execute in minecraft:overworld positioned 35658.5 290 -3044 run title @p[distance=..10,gamemode=!spectator] title {"text":"\u261e THEN EXIST AS YOU WILL. \u261c","color":"dark_green"}
execute in minecraft:overworld positioned 35658.5 290 -3044 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned 35658.5 290 -3044 run playsound minecraft:block.end_portal.spawn master @p[distance=..3] ~ ~ ~ 1 0.8 0.2
execute in minecraft:overworld positioned 35658.5 290 -3044 run effect give @p[distance=..10,gamemode=!spectator] minecraft:slow_falling 240 0


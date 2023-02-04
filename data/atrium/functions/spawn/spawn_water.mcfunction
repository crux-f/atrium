# Grant attunement
advancement grant @s only atrium:water_start
#
# If you changed attunements, grant advancement for that
execute if entity @s[tag=changed] run advancement grant @s only atrium:new_year_new_me
#
# If you got the same element twice, grant advancement for that
execute if entity @s[tag=changed,advancements={atrium:water_memory=true}] run advancement grant @s only atrium:despite_everything
#
# Remove tag
tag @s remove changed
#
# Teleport player to appropriate start, then give them the title, particles, sound, and potion effect.
loot give @s loot atrium:starting_equipment
execute as @s in minecraft:overworld run tp @s -11364.5 143 -11058.5 facing -11459 189 -10980
execute in minecraft:overworld positioned -11364.5 143 -11058.5 run title @s title {"text":"\u261e THEN EXIST AS YOU WILL. \u261c","color":"dark_green"}
execute in minecraft:overworld positioned -11364.5 143 -11058.5 run particle minecraft:flash ~ ~ ~ 0 0 0 0 5
execute in minecraft:overworld positioned -11364.5 143 -11058.5 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.8 0.2
execute in minecraft:overworld positioned -11364.5 143 -11058.5 run effect give @s minecraft:water_breathing 240 0

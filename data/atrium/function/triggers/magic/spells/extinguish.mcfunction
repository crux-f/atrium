# FX
execute anchored eyes run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 100
execute run playsound minecraft:entity.player.splash player @a[distance=..30] ~ ~ ~ 1 0.6 0.1
#
# Extinguish any entity that is currently on fire within...
#
# Level 1 = a 5-block radius
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} anchored eyes positioned ~ ~1 ~ at @e[distance=..5,predicate=atrium:entity/is_on_fire] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ water[level=1]
# Level 2 = a 10-block radius
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} anchored eyes positioned ~ ~1 ~ at @e[distance=..10,predicate=atrium:entity/is_on_fire] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ water[level=1]
# Level 3 = a 15-block radius
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} anchored eyes positioned ~ ~1 ~ at @e[distance=..15,predicate=atrium:entity/is_on_fire] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ water[level=1]
#
# (Note: Only works if there is an air block)
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

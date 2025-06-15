# Level 1 and up = Initial burst
execute anchored eyes run particle minecraft:flame ^ ^ ^3 1 1 1 0.1 100
execute anchored eyes run particle minecraft:lava ^ ^ ^3 1.5 1 1.5 0.1 50
# Level 2 and up = secondary particles
execute unless data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} anchored eyes run particle minecraft:flame ^ ^ ^5.5 1.5 1 1.5 0.1 125
execute unless data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} anchored eyes run particle minecraft:lava ^ ^ ^5.5 1.5 1 1.5 0.1 50
# Level 3 up and up = final layer
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} anchored eyes run particle minecraft:flame ^ ^ ^8 2 1.5 2 0.1 150
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} anchored eyes run particle minecraft:lava ^ ^ ^8 2 1.5 2 0.1 50
#
# Level 1 and up = small area in front of player
execute anchored eyes positioned ^ ^ ^3 run execute at @e[distance=..2.5] run summon small_fireball ~ ~2 ~ {Motion:[0.0,-10.0,0.0]}
# Level 2 and up = extends out into a cone
execute unless data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} anchored eyes positioned ^ ^ ^5.5 run execute at @e[distance=..3.5] run summon small_fireball ~ ~2 ~ {Motion:[0.0,-10.0,0.0]}
# Level 3 and up = BIG cone flare at the end
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} anchored eyes positioned ^ ^ ^8 run execute at @e[distance=..4.5] run summon small_fireball ~ ~2 ~ {Motion:[0.0,-10.0,0.0]}
playsound minecraft:entity.blaze.shoot player @a[distance=..15] ~ ~ ~ 1 0.1 0.1
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

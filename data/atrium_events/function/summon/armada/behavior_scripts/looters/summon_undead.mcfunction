# Summon undead (grants them Resistance 1 for 30 seconds on summon)
#
# If the vex would be summoned in a wall, teleport it to the nearest necromancer instead.
execute unless block ~ ~ ~ #atrium:non_solid_blocks run tp @s @e[limit=1,sort=nearest,tag=atrium_armada_necromancer]
# 25% chance of a skeleton instead of a zombie
execute if predicate atrium:percentage_chances/0.25_p run tag @s add atrium_skeleton_spawn
#
execute unless entity @s[tag=atrium_skeleton_spawn] run summon zombie ~ ~ ~ {Team:"atrium_armada",active_effects:[{id:"minecraft:resistance",amplifier:0b,duration:600,show_particles:1b}]}
#
execute if entity @s[tag=atrium_skeleton_spawn] run summon skeleton ~ ~ ~ {Team:"atrium_armada",equipment:{mainhand:{id:"minecraft:bow",count:1}},active_effects:[{id:"minecraft:resistance",amplifier:0b,duration:600,show_particles:1b}],"drop_chances":{mainhand:0}}
#
# If there is a nearby Witch (within 7 blocks), there is a 25% chance of her adding a Splash Potion of Fire Resistance into the mix.
execute if entity @e[type=minecraft:witch,distance=..10] if predicate atrium:percentage_chances/0.50_p run summon minecraft:splash_potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":"minecraft:fire_resistance"}}}
# sfx
execute at @s run function atrium_events:summon/armada/behavior_scripts/sfx/undead_animate
# Remove vexes after
execute as @s run function atrium_events:summon/armada/behavior_scripts/looters/remove_vexes
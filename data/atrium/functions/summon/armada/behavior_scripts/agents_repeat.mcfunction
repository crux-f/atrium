# Repeat every tick.
schedule function atrium:summon/armada/behavior_scripts/agents_repeat 1t
#
# If there is a player within 5 blocks of an Armada Secret Police, it attacks.
execute as @e[tag=hidden_secret_police] at @s if entity @p[distance=..5,gamemode=!spectator] run data merge entity @s {Tags:["armada_secret_police"],CustomName:'{"text":"Armada Secret Police","color":"yellow","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Scattershot Crossbow","color":"yellow","italic":false}',Lore:['{"text":"AoE attacks!"}']},scattershot_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:multishot",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:3b,tag:{display:{Name:'{"text":"Crowd Control Bolt","color":"yellow","italic":false}',Lore:['{"text":"The end goals implied by"}','{"text":"the Armada\'s mission"}','{"text":"statement are..."}','{"text":"troubling, to say the least."}']},crowd_control_bolt:1b,CustomPotionEffects:[{Id:18,Amplifier:0b,Duration:600,ShowParticles:1b}],Potion:"minecraft:empty",CustomPotionColor:9537668}}],HandDropChances:[0.100F,0.085F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1,ShowParticles:1b}],Attributes:[{Name:"generic.follow_range",Base:30}]}
#
# At every propagandist when it is noon in their time, create rumors
execute as @e[tag=hidden_propagandist,predicate=atrium:time_check/village_meeting_middle] run function atrium:summon/armada/behavior_scripts/spread_rumors
# At every sleeper agent when it is noon in their time, create minor rumors
execute as @e[tag=hidden_sleeper_agent,predicate=atrium:time_check/village_meeting_middle] run function atrium:summon/armada/behavior_scripts/spread_minor_rumors
# At every haywire golem when it is noon their time, reset to normal golem
execute as @e[tag=haywire_golem,predicate=atrium:time_check/village_meeting_middle] run function atrium:summon/armada/behavior_scripts/haywire_reset
# At every saboteur when it is noon in their time, make some trouble
execute as @e[tag=hidden_saboteur,predicate=atrium:time_check/village_meeting_middle] run function atrium:summon/armada/behavior_scripts/make_trouble
#
# At every saboteur, there is a 1% chance that they attempt to interfere with a nearby redstone device (and maybe other stuff if i have time)
execute as @e[tag=hidden_saboteur] if predicate atrium:percentage_chances/0.01_p at @s unless entity @p[gamemode=survival,distance=..10,predicate=!atrium:completely_invisible] run function atrium:summon/armada/behavior_scripts/interfere_in_general
#
# Give Haywire Golems particles
execute at @e[tag=haywire_golem] run particle dust 1.000 0.000 0.000 1 ~ ~1 ~ 1 1 1 1 50 normal
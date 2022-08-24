# Repeat every tick.
schedule function atrium:summon/armada/behavior_scripts/agents_repeat 1t
#
# If there is a player within 5 blocks of an Armada Secret Police, it attacks.
execute as @e[tag=hidden_secret_police] at @s if entity @p[distance=..5,gamemode=!spectator] run data merge entity @s {Tags:["armada_secret_police"],CustomName:'{"text":"Armada Secret Police","color":"yellow","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Scattershot Crossbow","color":"yellow","italic":false}',Lore:['{"text":"AoE attacks!"}']},scattershot_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:multishot",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:3b,tag:{display:{Name:'{"text":"Crowd Control Bolt","color":"yellow","italic":false}',Lore:['{"text":"The end goals implied by"}','{"text":"the Armada\'s mission"}','{"text":"statement are..."}','{"text":"troubling, to say the least."}']},crowd_control_bolt:1b,CustomPotionEffects:[{Id:18,Amplifier:0b,Duration:600,ShowParticles:1b}],Potion:"minecraft:empty",CustomPotionColor:9537668}}],HandDropChances:[0.100F,0.085F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1,ShowParticles:1b}],Attributes:[{Name:"generic.follow_range",Base:30}]}
#
# At every propagandist when it is noon in their time, create rumors
execute as @e[tag=hidden_propagandist,predicate=atrium:time_check/village_meeting_middle] run function atrium:summon/armada/behavior_scripts/spread_rumors
# At every sabotour when it is noon in their time, make some trouble
execute as @e[tag=hidden_sabotour,predicate=atrium:time_check/village_meeting_middle] run function atrium:summon/armada/behavior_scripts/make_trouble
# Revoke for future
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/reveal_assassin_hit
#
# tick up score by 1
scoreboard players add @e[tag=armada_disguised,distance=..10] event_misc 1
#
# Reveal Particles + Sound(?)
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=armada_disguised,distance=..10] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 25
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] run playsound minecraft:entity.pillager.celebrate hostile @a[distance=..5] ~ ~ ~ 1.25 1 0.1
#
# Reveal all nearby agents if there is an agent with 3 hits or more
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_assassin,distance=..10] run function atrium:summon/armada/single/summon_assassin
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_propagandist,distance=..10] run function atrium:summon/armada/single/summon_propagandist
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_sleeper_agent,distance=..10] run function atrium:summon/armada/single/summon_sleeper_agent
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_sabotour,distance=..10] run function atrium:summon/armada/single/summon_saboteur
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] as @e[tag=hidden_secret_police,distance=..10] run data merge entity @s {Tags:["armada_secret_police"],CustomName:'{"text":"Armada Secret Police","color":"yellow","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Scattershot Crossbow","color":"yellow","italic":false}',Lore:['{"text":"AoE attacks!"}']},scattershot_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:multishot",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:3b,tag:{display:{Name:'{"text":"Crowd Control Bolt","color":"yellow","italic":false}',Lore:['{"text":"The end goals implied by"}','{"text":"the Armada\'s mission"}','{"text":"statement are..."}','{"text":"troubling, to say the least."}']},crowd_control_bolt:1b,CustomPotionEffects:[{Id:18,Amplifier:0b,Duration:600,ShowParticles:1b}],Potion:"minecraft:empty",CustomPotionColor:9537668}}],HandDropChances:[0.100F,0.085F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1,ShowParticles:1b}],Attributes:[{Name:"generic.follow_range",Base:30}]}
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_informant,distance=..10] run function atrium:summon/armada/single/summon_informant
# Remove 'Disguised' villagers
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] run tp @e[distance=..10,tag=armada_disguised] ~ ~-400 ~
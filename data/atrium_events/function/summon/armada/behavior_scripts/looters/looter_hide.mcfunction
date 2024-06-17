# Increase each entity's hiding score by 1 if they aren't currently targeting a player
execute as @e[tag=atrium_hiding,predicate=!atrium:entity/is_targeting_survival_player] unless entity @s[scores={hiding=31..}] run scoreboard players add @s hiding 1
execute at @e[tag=atrium_hiding,predicate=!atrium:entity/is_targeting_survival_player,scores={hiding=..29}] run particle minecraft:smoke ~ ~0.25 ~ 0.5 1 0.5 0 1
#
# If any of them had long enough to hide (30 seconds), remove handitems and set silent
execute as @e[tag=atrium_hiding,tag=!atrium_armada_necromancer,scores={hiding=30}] run data remove entity @s HandItems[0]
execute as @e[tag=atrium_hiding,scores={hiding=30}] run data modify entity @s Silent set value 1
# Evokers are too god damn fast for stealth. Slow down, dude.
execute as @e[tag=atrium_hiding,tag=atrium_armada_necromancer,scores={hiding=30..}] run effect give @s minecraft:slowness 3 1 true
#
# come out of hiding if in battle
# Restore items + turn off silent
execute as @e[tag=atrium_hiding,tag=atrium_looting_party_leader,scores={hiding=30..}] at @s if entity @a[distance=..15,gamemode=survival] run data merge entity @s {Silent:0b,Team:"armada",PersistenceRequired:1b,Health:34f,Tags:["atrium_armada_crusader","atrium_hiding","looting_party_leader"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Crusader\'s Broadsword","color":"red","italic":false}',Lore:['{"text":"The emblem of The Armada is"}','{"text":"carved into the blade. A"}','{"text":"weapon forged to destroy"}','{"text":"you."}']},atrium_crusaders_broadsword:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}},{}],HandDropChances:[0.060F,0.085F],Attributes:[{Name:"generic.max_health",Base:34},{Name:"generic.armor",Base:8},{Name:"generic.armor_toughness",Base:2}]}
execute as @e[tag=atrium_hiding,tag=atrium_armada_looter,scores={hiding=30..}] at @s if entity @a[distance=..15,gamemode=survival] run data merge entity @s {Silent:0b,Team:"armada",PersistenceRequired:1b,Health:35f,Tags:["atrium_armada_looter","atrium_hiding"],CustomName:'{"text":"Armada Looter","color":"yellow","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:piercing",lvl:2s},{id:"minecraft:quick_charge",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:2b,tag:{display:{Name:'{"text":"Negative Energy Bolt","color":"dark_gray","italic":false}',Lore:['{"text":"Infused with dark magic,"}','{"text":"these crossbow bolts are"}','{"text":"only granted to operatives"}','{"text":"involved in missions of"}','{"text":"great import."}']},atrium_negative_energy_bolt:1b,CustomPotionEffects:[{Id:7,Amplifier:0b,Duration:1,ShowParticles:1b}],CustomPotionColor:3158064}}],HandDropChances:[0.000F,0.500F],Attributes:[{Name:"generic.max_health",Base:35}]}
execute as @e[tag=atrium_hiding,tag=atrium_armada_necromancer,scores={hiding=30..}] at @s if entity @a[distance=..15,gamemode=survival] run data merge entity @s {Silent:0b,Team:"armada",PersistenceRequired:1b,Health:48f,Tags:["atrium_armada_necromancer","atrium_hiding"],CustomName:'{"text":"Armada Necromancer","color":"red","italic":false}',Attributes:[{Name:"generic.max_health",Base:48}]}
execute as @e[tag=atrium_hiding,predicate=atrium:entity/is_targeting_survival_player] at @s if entity @a[distance=..15,gamemode=survival] run scoreboard players set @s hiding 10
#
# Run again in 1 second if an event is still going on
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/looters/looter_hide 1s
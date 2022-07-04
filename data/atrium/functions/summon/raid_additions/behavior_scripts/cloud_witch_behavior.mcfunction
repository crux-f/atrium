# Triggered when the mob spawns, or by the mob taking damage from a player.
#
# Note: they can summon more than one type at a time.
#
# 25 percent chance to summon a poison mine 
execute at @e[tag=cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.25_p run summon experience_orb ^ ^ ^1 {Health:6b,Value:0,Tags:["alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["alchemy_mine_poison"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0f,Color:1726736,Potion:"minecraft:poison"}],CustomName:'{"text":"Alchemical Mine","color":"gray","italic":false}',Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}]}
#
# 25 percent chance to summon a weakness mine 
execute at @e[tag=cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.25_p run summon experience_orb ^ ^ ^1 {Health:6b,Value:0,Tags:["alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["alchemy_mine_weakness"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0f,Color:6184542,Potion:"minecraft:weakness"}],CustomName:'{"text":"Alchemical Mine","color":"gray","italic":false}',Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}]}
#
# 15 percent chance to summon a slowness mine 
execute at @e[tag=cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.15_p run summon experience_orb ^ ^ ^1 {Health:6b,Value:0,Tags:["alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["alchemy_mine_weakness"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0f,Color:2829099,Potion:"minecraft:weakness"}],CustomName:'{"text":"Alchemical Mine","color":"gray","italic":false}',Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}]}
#
# 15 percent chance to summon an instant damage mine
execute at @e[tag=cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.15_p run summon experience_orb ^ ^ ^1 {Health:6b,Value:0,Tags:["alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["alchemy_mine_damage"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0f,Color:3344139,Potion:"minecraft:harming"}],CustomName:'{"text":"Alchemical Mine","color":"gray","italic":false}',Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"}}}]}
#
# Placement sound
execute at @e[tag=cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if entity @e[distance=..3,tag=alchemy_mine_orb] run playsound minecraft:entity.witch.drink hostile @a[distance=..15] ~ ~ ~ 0.75 0.5 0.1
execute at @e[tag=cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if entity @e[distance=..3,tag=alchemy_mine_orb] run playsound minecraft:item.spyglass.use hostile @a[distance=..15] ~ ~ ~ 1 0.75 0.1
#
# Schedule to run again if the mob is alive
execute if entity @e[tag=cloud_witch] run schedule function atrium:summon/raid_additions/behavior_scripts/cloud_witch_behavior 10s
#
# Remove advancement
advancement revoke @a only atrium:triggers/raids/behavior/cloud_witch_retrigger

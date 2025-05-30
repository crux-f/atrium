# Triggered when the mob spawns, or by the mob taking damage from a player.
#
# Note: they can summon more than one type at a time.
#
# 25 percent chance to summon a poison mine 
execute at @e[tag=atrium_cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.25_p run summon experience_orb ^ ^ ^1 {Health:6,Value:0,Tags:["atrium_alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["atrium_alchemy_mine_poison"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0,Color:1726736,Potion:"minecraft:poison"}],CustomName:{text:"Alchemical Mine","color":"gray","italic":false},Item:{id:"minecraft:splash_potion",count:1,tag:{Potion:"minecraft:poison"}}}]}
#
# 25 percent chance to summon a weakness mine 
execute at @e[tag=atrium_cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.25_p run summon experience_orb ^ ^ ^1 {Health:6,Value:0,Tags:["atrium_alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["atrium_alchemy_mine_weakness"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0,Color:6184542,Potion:"minecraft:weakness"}],CustomName:{text:"Alchemical Mine","color":"gray","italic":false},Item:{id:"minecraft:splash_potion",count:1,tag:{Potion:"minecraft:weakness"}}}]}
#
# 15 percent chance to summon a slowness mine 
execute at @e[tag=atrium_cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.15_p run summon experience_orb ^ ^ ^1 {Health:6,Value:0,Tags:["atrium_alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["atrium_alchemy_mine_weakness"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0,Color:2829099,Potion:"minecraft:weakness"}],CustomName:{text:"Alchemical Mine","color":"gray","italic":false},Item:{id:"minecraft:splash_potion",count:1,tag:{Potion:"minecraft:slowness"}}}]}
#
# 15 percent chance to summon an instant damage mine
execute at @e[tag=atrium_cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if predicate atrium:percentage_chances/0.15_p run summon experience_orb ^ ^ ^1 {Health:6,Value:0,Tags:["atrium_alchemy_mine_orb"],Passengers:[{id:"minecraft:potion",Tags:["atrium_alchemy_mine_damage"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"entity_effect",Radius:0.1f,Duration:200,DurationOnUse:0,Color:3344139,Potion:"minecraft:harming"}],CustomName:{text:"Alchemical Mine","color":"gray","italic":false},Item:{id:"minecraft:splash_potion",count:1,tag:{Potion:"minecraft:harming"}}}]}
#
# Placement sound
execute at @e[tag=atrium_cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if entity @e[distance=..3,tag=atrium_alchemy_mine_orb] run playsound minecraft:entity.witch.drink hostile @a[distance=..15] ~ ~ ~ 0.75 0.5 0.1
execute at @e[tag=atrium_cloud_witch] if entity @p[gamemode=!spectator,distance=..30] if entity @e[distance=..3,tag=atrium_alchemy_mine_orb] run playsound minecraft:item.spyglass.use hostile @a[distance=..15] ~ ~ ~ 1 0.75 0.1
#
# Schedule to run again if the mob is alive
execute if entity @e[tag=atrium_cloud_witch] run schedule function atrium_events:summon/raid_additions/behavior_scripts/cloud_witch_behavior 10s
#
# Remove advancement
advancement revoke @a only atrium_events:triggers/entities/cloud_witch_retrigger

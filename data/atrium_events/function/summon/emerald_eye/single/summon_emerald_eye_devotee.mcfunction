# Summon 1 Emerald Eye Devotee
summon evoker ~ ~ ~ {Team:"occupied",PersistenceRequired:1b,Health:48f,Tags:["atrium_emerald_ritualist","atrium_feast_ability"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"enchant",CustomNameVisible:0b,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:20,Tags:["atrium_rune_counter"],Potion:"minecraft:empty",Effects:[{Id:29,Amplifier:0b,Duration:1,ShowParticles:0b}]}],CustomName:{text:"Emerald Eye Devotee","color":"red","italic":false},Attributes:[{Name:"generic.max_health",Base:48},{Name:"generic.follow_range",Base:24}]}
#
# Particles!
function atrium_events:summon/fx/summon_poof

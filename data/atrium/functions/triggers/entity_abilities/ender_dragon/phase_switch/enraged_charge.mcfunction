# Revoke to allow re-trigger (several triggers)
advancement revoke @s only atrium:triggers/entity_abilities/ender_dragon/phase_switch/enrage_on_water_placed
advancement revoke @s only atrium:triggers/entity_abilities/ender_dragon/phase_switch/enrage_on_enchanted_apple
#
# Switch to Phase 8 (charge player within 120 blocks) if it is currently circling (0) or strafing (1).
data modify entity @e[type=minecraft:ender_dragon,limit=1,nbt={DragonPhase:0}] DragonPhase set value 8
data modify entity @e[type=minecraft:ender_dragon,limit=1,nbt={DragonPhase:1}] DragonPhase set value 8
#
# Spawn timer entity within the end portal fountain. Space Distortion Ward will last until the timer runs out.
# Dragon enraged by placing water or eating an Enchanted Golden Apple = 1 minute | 1200 ticks
# (only 1 at a time)
execute in minecraft:the_end unless entity @e[tag=atrium_dragon_ward_timer] run summon area_effect_cloud 0 63 0 {Particle:"portal",CustomNameVisible:0b,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1200,Tags:["atrium_dragon_ward_timer"],CustomName:'{"text":"Spacial Distortion Ward Timer","color":"dark_purple","italic":false}'}
#
# Start Ward
function atrium:triggers/entity_abilities/ender_dragon/phase_specific/space_distortion_ward
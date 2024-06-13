# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/ender_dragon/phase_specific/shoot_landing_dragon
#
# 50% chance of activating the Spacial Distortion Ward
#
# Spawn timer entity within the end portal fountain. Space Distortion Ward will last until the timer runs out.
# Player shoots dragon while it is landing = 30 seconds | 600 ticks
execute in minecraft:the_end if predicate atrium:percentage_chances/0.50_p run summon area_effect_cloud 0 63 0 {Particle:"portal",CustomNameVisible:0b,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,Tags:["atrium_dragon_ward_timer"],CustomName:'{"text":"Spacial Distortion Ward Timer","color":"dark_purple","italic":false}'}
#
# Start Ward
function atrium:triggers/entity_abilities/ender_dragon/phase_specific/space_distortion_ward
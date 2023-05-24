# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/kill_eye_of_the_nameless
#
# Remove all eye chamber markers
execute at @s run kill @e[type=minecraft:marker,nbt={data:{palace_boss_marker:1}},distance=..20]
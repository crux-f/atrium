# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/ender_dragon/dragon_bite_effects
#
# SHOULD only trigger when the dragon bites someone, not on wing or tail attacks.
#
# Give Nausea and Slowness I for 15 seconds.
effect give @s minecraft:nausea 15 0 true
effect give @s minecraft:slowness 15 0 true
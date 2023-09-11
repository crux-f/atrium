# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/repair_empathic_golem
#
# Heal the player who repaired the golem (unless it was repaired using a golem core)
execute unless data entity @s {SelectedItem:{tag:{atrium_golem_core:1b}}} run effect give @s minecraft:instant_health 1 0 true
#
# Particles!
execute unless data entity @s {SelectedItem:{tag:{atrium_golem_core:1b}}} at @s at @e[tag=atrium_empathic_core_installed,distance=..7,sort=nearest,limit=1] run particle minecraft:heart ~ ~1.5 ~ 0.75 1 0.75 0.1 25 normal
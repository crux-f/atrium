# Activated by right-clicking on an Iron Golem with a Golem Core
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/golem_cores/install_flowering_core
#
# Let the player know that they can't install more than one core
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:iron_golem,sort=nearest,distance=..5] if entity @s[tag=atrium_golem_core_installed] run tellraw @p[gamemode=!spectator] {"text":"(This golem already has a core installed.)","italic":true,"color":"red"}
# If the golem already has a core, damage it (to undo the repair)
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:iron_golem,sort=nearest,distance=..5] if entity @s[tag=atrium_golem_core_installed] run damage @s 15 minecraft:player_attack by @s
# Then give the core back (since the core is technically an iron ingot it is still consumed)
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:iron_golem,sort=nearest,distance=..5] if entity @s[tag=atrium_golem_core_installed] run give @p[gamemode=!spectator] minecraft:iron_ingot[minecraft:custom_model_data={strings:["atrium_golem_core_flowering"]},minecraft:lore=['{"text":"Flowering","color":"green","italic":false}','{"text":" "}','{"text":"When Used on damaged Iron Golem:","color":"dark_purple","italic":false}','{"text":"Regeneration (∞)","color":"blue","italic":false}'],minecraft:item_name='{"text":"Golem Core"}',minecraft:custom_data={atrium_core_type:"flowering",atrium_golem_core:1b}] 1
# Tag the golem if the golem is a valid target
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:iron_golem,sort=nearest,distance=..5] unless entity @s[tag=atrium_golem_core_installed] run tag @s add atrium_installing_core
# Success sound + particles
execute at @s if entity @e[limit=1,tag=atrium_installing_core,sort=nearest,distance=..5] run playsound minecraft:entity.villager.work_toolsmith player @a[distance=..10] ~ ~ ~ 0.75 0.75 0.1
execute at @s at @e[limit=1,tag=atrium_installing_core,sort=nearest,distance=..5] run particle minecraft:wax_off ~ ~1.5 ~ 1 1 1 0.1 20
#
# Grant Iron Golem the ability associated with the core type
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_installing_core,sort=nearest,distance=..5] run effect give @s minecraft:regeneration infinite
# Add core installed tags
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_installing_core,sort=nearest,distance=..5] run tag @s add atrium_golem_core_installed
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_installing_core,sort=nearest,distance=..5] run tag @s add atrium_flowering_core_installed
# Remove the tag afterwards
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_installing_core,sort=nearest,distance=..5] run tag @s remove atrium_installing_core
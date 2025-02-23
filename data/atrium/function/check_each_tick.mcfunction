# Special Entity Manager
execute if entity @e[tag=atrium_special] as @e[tag=atrium_special] run function atrium:general/special_entity_manager
# Special Condition Manager
execute if entity @e[tag=atrium_condition] as @e[tag=atrium_condition] run function atrium:entities/condition_manager
# Ghost (Dead Player) Manager
# execute if entity @a[gamemode=spectator] as @a[gamemode=spectator] at @s run function atrium:general/death/ghost_manager
#
# PATREON (Runekeeper)
execute as @a[name=shadow_knight6,gamemode=!spectator] if data entity @s {Inventory:[{Slot:102b,components:{"minecraft:custom_data":{atrium_patron:"shadow_knight6"}}}]} at @s anchored feet if predicate atrium:percentage_chances/0.30_p run particle pale_oak_leaves ^ ^1.25 ^-0.5 0.5 0.5 0.5 0 1
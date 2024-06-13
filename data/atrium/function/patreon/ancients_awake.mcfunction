# 25% chance to tag a random player in the overworld
execute as @r[predicate=atrium:in_overworld] if predicate atrium:percentage_chances/0.25_p run tag @s add giant_trigger
# spawn a summon point at their position
execute at @a[tag=giant_trigger] run summon marker ~ ~ ~ {Tags:["giant_spawnpoint"]}
# relocate to random spawn area on the surface
execute at @a[tag=giant_trigger] run spreadplayers ~ ~ 100 250 under 500 false @e[tag=giant_spawnpoint]
# Summon Giant at spawnpoint
execute at @e[tag=giant_spawnpoint] run summon giant ~ ~ ~ {Attributes: [{Base: 100, Name: "generic.follow_range"}, {Base: 10, Name: "generic.knockback_resistance"}, {Base: 0.22d, Name: "generic.movement_speed"}, {Base: 10, Name: "generic.armor"}, {Base: 10, Name: "generic.armor_toughness"}, {Base: 5, Name: "generic.attack_knockback"}], Passengers: [{ArmorDropChances: [0.085f, 0.085f, 0.0f, 0.0f], ArmorItems: [{}, {}, {components: {"minecraft:enchantments": {levels: {"minecraft:projectile_protection": 10}}}, count: 1, id: "minecraft:rotten_flesh"}, {count: 1, id: "minecraft:rotten_flesh"}], Attributes: [{Base: 80, Name: "generic.max_health"}], DeathLootTable: "minecraft:empty", Health: 80.0f, PersistenceRequired: 1b, Tags: ["atrium_giant_brain", "atrium_giant"], id: "minecraft:zombie"}], PersistenceRequired: 1b, Tags: ["atrium_giant_body", "atrium_giant"]}
# Remove spawnpoint
kill @e[tag=giant_spawnpoint]
#
# REMOVE TAG
tag @a remove giant_trigger
#
# Schedule to run again in 1 hour
schedule function atrium:patreon/ancients_awake 3600s

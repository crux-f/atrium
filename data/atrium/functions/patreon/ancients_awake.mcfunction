# 30% chance to tag a random player in the overworld
execute as @r[predicate=atrium:in_overworld] if predicate atrium:percentage_chances/0.30_p run tag @s add giant_trigger
# spawn a summon point at their position
execute at @a[tag=giant_trigger] run summon marker ~ ~ ~ {Tags:["giant_spawnpoint"]}
# relocate to random spawn area on the surface
execute at @a[tag=giant_trigger] run spreadplayers ~ ~ 100 250 under 500 false @e[tag=giant_spawnpoint]
# Summon Giant at spawnpoint
execute at @a[tag=giant_spawnpoint] run summon giant ~ ~ ~ {PersistenceRequired:1b,Tags:["atrium_giant_body","atrium_giant"],Passengers:[{id:"minecraft:zombie",DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:80f,Tags:["atrium_giant_brain","atrium_giant"],ArmorItems:[{},{},{id:"minecraft:rotten_flesh",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:10s}]}},{id:"minecraft:rotten_flesh",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:80}]}],Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:10},{Name:generic.movement_speed,Base:0.22},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:10},{Name:generic.attack_knockback,Base:5}]}
# Remove spawnpoint
kill @e[tag=giant_spawnpoint]
#
#
# Schedule to run again in 1 hour
schedule function atrium:patreon/ancients_awake 3600s

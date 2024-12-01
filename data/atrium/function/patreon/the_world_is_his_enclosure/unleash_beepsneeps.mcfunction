# Create a Beepsneeps summoning point
title @s actionbar {"text":"He is after you.","italic":true,"color":"dark_red"}
summon minecraft:marker ~ ~ ~ {NoGravity:1b,Glowing:1b,CustomNameVisible:1b,Tags:["atrium_beepsneeps_jar"],CustomName:'{"text":"Beepsneeps Spawn Point","color":"yellow","italic":false}'}
spreadplayers ~ ~ 15 35 under 400 false @e[tag=atrium_beepsneeps_jar,distance=..5]
#
# At the summoning point, unleash him.
execute at @e[limit=1,tag=atrium_beepsneeps_jar] run summon minecraft:zombie ~ ~ ~ {ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], ArmorItems: [{components: {"minecraft:dyed_color": {rgb: 0}}, count: 1, id: "minecraft:leather_boots"}, {components: {"minecraft:dyed_color": {rgb: 0}}, count: 1, id: "minecraft:leather_leggings"}, {components: {"minecraft:dyed_color": {rgb: 0}}, count: 1, id: "minecraft:leather_chestplate"}, {components: {"minecraft:custom_data": {atrium_beepsneeps_head: 1b}, "minecraft:custom_name": '{"text":"The Head of Beepsneeps","italic":false}', "minecraft:profile": {id: [I; -1180722288, -653047719, -2105279697, -1262765658], name: "", properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY0NjQyNDk4ZWYwNWZiN2ZlOGQ2OTE0NmJhYjk2MmFkMjhkZjViOTc3M2U4MWI0MjhlYzk3ZWQwODE3ZGFmYiJ9fX0="}]}}, count: 1, id: "minecraft:player_head"}], attributes: [{base: 30, id: "generic.max_health"}, {base: 100, id: "generic.follow_range"}, {base: 0.3d, id: "generic.movement_speed"}], CustomName: '{"text":"Beepsneeps","color":"dark_red","italic":false}', DeathLootTable: "atrium:patreon/beepsneeps", HandDropChances: [0.0f, 0.085f], HandItems: [{components: {"minecraft:custom_name": '{"text":"Enrichment","color":"yellow","italic":false}', "minecraft:enchantments": {levels: {"minecraft:sharpness": 7, "minecraft:unbreaking": 5}}, "minecraft:lore": ['{"text":"He needs it in his enclosure."}', '{"text":"Unfortunately, the whole"}', '{"text":"world is his enclosure."}']}, count: 1, id: "minecraft:netherite_sword"}, {}], Health: 30.0f, IsBaby: 1b, LeftHanded: 1b, PersistenceRequired: 1b, Silent: 1b, Tags: ["atrium_beepsneeps"]}
# Summon particles
execute at @e[tag=atrium_beepsneeps] run particle minecraft:poof ~ ~0.25 ~ 0.25 0.25 0.25 0.1 25 normal
# Summon SFX
execute at @e[tag=atrium_beepsneeps] run playsound atrium:entity.beepsneeps.appear hostile @s ~ ~ ~ 1 1 0.1
#
# Remove summon point
kill @e[tag=atrium_beepsneeps_jar]
# Scoreboard set (keeps him at bay until next dusk)
scoreboard players set @s atrium_beepsneeps_anomaly 1
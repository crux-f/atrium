# Create a Beepsneeps summoning point
title @s actionbar {"text":"He is after you.","italic":true,"color":"dark_red"}
summon minecraft:marker ~ ~ ~ {NoGravity:1b,Glowing:1b,CustomNameVisible:1b,Tags:["atrium_beepsneeps_jar"],CustomName:'{"text":"Beepsneeps Spawn Point","color":"yellow","italic":false}'}
spreadplayers ~ ~ 15 35 under 400 false @e[tag=atrium_beepsneeps_jar,distance=..5]
#
# At the summoning point, unleash him.
execute at @e[limit=1,tag=atrium_beepsneeps_jar] run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"atrium:patreon/beepsneeps",Silent:1b,LeftHanded:1b,PersistenceRequired:1b,Health:30f,IsBaby:1b,Tags:["atrium_beepsneeps"],CustomName:'{"text":"Beepsneeps","color":"dark_red","italic":false}',HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Enrichment","color":"yellow","italic":false}',Lore:['{"text":"He needs it in his enclosure."}','{"text":"Unfortunately, the whole"}','{"text":"world is his enclosure."}']},Enchantments:[{id:"minecraft:sharpness",lvl:7s},{id:"minecraft:unbreaking",lvl:5s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"The Head of Beepsneeps","italic":false}'},atrium_beepsneeps_head:1b,SkullOwner:{Id:[I;-1180722288,-653047719,-2105279697,-1262765658],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY0NjQyNDk4ZWYwNWZiN2ZlOGQ2OTE0NmJhYjk2MmFkMjhkZjViOTc3M2U4MWI0MjhlYzk3ZWQwODE3ZGFmYiJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:30},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.3}]}
# Summon particles
execute at @e[tag=atrium_beepsneeps] run particle minecraft:poof ~ ~0.25 ~ 0.25 0.25 0.25 0.1 25 normal
# Summon SFX
execute at @e[tag=atrium_beepsneeps] run playsound atrium:entity.beepsneeps.appear hostile @s ~ ~ ~ 1 1 0.1
#
# Remove summon point
kill @e[tag=atrium_beepsneeps_jar]
# Scoreboard set (keeps him at bay until next dusk)
scoreboard players set @s atrium_beepsneeps_anomaly 1
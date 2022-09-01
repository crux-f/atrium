# Revoke for future
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/reveal_assassin_trade
#
# Reveal Particles + Sound(?)
execute at @s at @e[tag=armada_disguised,distance=..10] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 25
execute at @s run playsound minecraft:entity.pillager.celebrate hostile @a[distance=..5] ~ ~ ~ 1.25 1 0.1
#
# Reveal nearby agents
#
# Reveal Assassins
execute at @s at @e[tag=hidden_assassin,distance=..10] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Health:45f,CanJoinRaid:1b,Tags:["armada_assassin"],CustomName:'{"text":"Armada Assassin","color":"yellow","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Quickdraw Crossbow","color":"gray","italic":false}'},quickdraw_crossbow:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:2s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_poison"}},{},{}],Charged:1b}},{}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Agent\'s Disguise","italic":false}',Lore:['{"text":"Its full of secret pockets"}','{"text":"and hidden crossbow bolt"}','{"text":"holsters. "}'],color:35934},agents_disguise:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:swift_sneak",lvl:1s}]}},{},{}],ArmorDropChances:[0.085F,0.060F,0.085F,0.085F],Attributes:[{Name:"generic.max_health",Base:45}]}
#
# Reveal Others here later
#
# Remove 'Disguised' villagers
execute at @s run tp @e[distance=..10,tag=armada_disguised] ~ ~-400 ~
#
# Remove the unnecessary item
clear @s paper{suspicious_villager:1b}
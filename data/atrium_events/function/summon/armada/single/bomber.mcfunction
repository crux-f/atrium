# Summon 1 Armada Bomber.
summon phantom ~ ~ ~ {Team:"atrium_armada",PersistenceRequired:1b,Health:30f,Size:2,Tags:["atrium_armada_bomber","atrium_has_bomb"],CustomName:'"Armada Bomber"',ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":4}}}},{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":4}}}},{}],ArmorDropChances:[0.085F,-327.670F,-327.670F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1},{id:"minecraft:weaving",amplifier:0,duration:-1,ambient:1b}],attributes:[{id:"minecraft:max_health",base:30},{id:"scale",base:1.75}]}
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/bomber_repeat
# Visual effects
function atrium:summon/summon_poof
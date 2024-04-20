# Summon 1 Infernium Sapper
summon skeleton ~ ~ ~ {Team:"infernium",PersistenceRequired:1b,Health:15f,Tags:["atrium_infernium_sapper"],CustomName:'{"text":"Infernium Sapper","color":"yellow"}',HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{}],HandDropChances:[0.070F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:chainmail_helmet",Count:1b}],ArmorDropChances:[0.050F,0.050F,0.050F,0.050F],Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.follow_range",Base:40}]}
# Start behavior script
function atrium_events:summon/infernium/behavior_scripts/sapper_mine_blocks

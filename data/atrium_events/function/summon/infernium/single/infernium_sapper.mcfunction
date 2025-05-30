# Summon 1 Infernium Sapper
summon skeleton ~ ~ ~ {Team:"infernium",PersistenceRequired:1b,Health:15f,Tags:["atrium_infernium_sapper"],CustomName:{text:"Infernium Sapper","color":"yellow"},equipment:{mainhand:{id:"minecraft:iron_pickaxe",count:1}],HandDropChances:[0.070F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:chainmail_helmet",count:1}},ArmorDropChances:[0.050F,0.050F,0.050F,0.050F],Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.follow_range",Base:40}]}
# Start behavior script
function atrium_events:summon/infernium/behavior_scripts/sapper_mine_blocks

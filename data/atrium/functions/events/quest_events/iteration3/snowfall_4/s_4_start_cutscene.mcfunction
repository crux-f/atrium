# Oh nice NoAI makes you face south and he's already doing that by sheer coincidence
#
# Summon cutscene Pyronicus 5 blocks south + 0.5 blocks up
summon skeleton ~ ~0.5 ~5 {Health:1,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,LeftHanded:1b,PersistenceRequired:1b,NoAI:1b,Tags:["pyronicus_cutscene"],CustomName:'{"text":"Pyronicus, Duke of Devastation","color":"dark_red","italic":false}',HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16732165}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8724481}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4521984}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:10s}]}}],Attributes:[{Name:"generic.follow_range",Base:-1},{Name:"generic.knockback_resistance",Base:1}]}
#
# Replace command block
setblock ~ ~ ~ dark_oak_planks
#
# Start cutscene sequence
function atrium:events/quest_events/iteration3/snowfall_4/s_4__cs1
#
# Start music
execute as @a[tag=event] run function atrium:music/network_tampering
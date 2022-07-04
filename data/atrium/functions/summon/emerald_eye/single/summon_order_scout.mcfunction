# Summon 1 Order Scout
summon pillager ~ ~ ~ {CustomNameVisible:0b,PersistenceRequired:1b,Health:40f,Patrolling:1b,CanJoinRaid:1b,CustomName:'{"text":"Order Scout","color":"yellow","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:quick_charge",lvl:1s}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Snow Scout\'s Boots","color":"blue","italic":false}',color:1362175},snow_scouts_boots:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;2067250162,1826637942,-1458702120,1701529666],Slot:"feet"}]}},{},{},{}],ArmorDropChances:[0.060F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.follow_range",Base:40}]}
#
# Particles!
function atrium:summon/fx/summon_poof

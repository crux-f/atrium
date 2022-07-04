# Summon 1 Order Guard
summon pillager ~ ~ ~ {Team:"occupied",PersistenceRequired:1b,Health:50f,CanJoinRaid:1b,CustomName:'{"text":"Order Guard","color":"dark_green","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Resilient Crossbow","italic":false}'},Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}},{}],HandDropChances:[0.085F,0.085F],Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.follow_range",Base:50},{Name:"generic.armor",Base:6},{Name:"generic.armor_toughness",Base:1}]}
#
# Particles!
function atrium:summon/fx/summon_poof

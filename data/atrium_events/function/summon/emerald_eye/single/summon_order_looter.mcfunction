# Summon 1 Order Looter
summon vindicator ~ ~ ~ {CanJoinRaid:1b,PersistenceRequired:1b,Health:65f,CustomName:'{"text":"Order Looter","color":"yellow","italic":false}',HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{display:{Name:'{"text":"Hingebreaker Axe","color":"yellow","italic":false}',Lore:['{"text":"Smells like sawdust."}']},atrium_hingebreaker_axe:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:1s}]}},{}],HandDropChances:[0.080F,0.085F],Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.follow_range",Base:40}]}
#
# Particles!
function atrium_events:summon/fx/summon_poof

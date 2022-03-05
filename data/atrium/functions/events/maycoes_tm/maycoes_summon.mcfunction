# Unless the marker exists, spawn it
execute unless entity @e[tag=maycoes_marker] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["maycoes_marker"]}
# Unless the center point exists, spawn it
execute unless entity @e[tag=maycoes_center] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["maycoes_center","maycoes_tp"]}
# Unless Maycoes exists, summon him
execute unless entity @e[tag=maycoes] run summon illusioner ~ ~ ~ {Glowing:1b,Team:"maycoes",LeftHanded:1b,CustomNameVisible:1b,PersistenceRequired:1b,Health:1000f,Tags:["maycoes"],CustomName:'{"text":"Maycoes, Armada Mastermind","color":"#7923DB"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Mirage","color":"gold","italic":false}'},RepairCost:999,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:punch",lvl:3s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.follow_range,Base:200},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0},{Name:generic.armor,Base:20},{Name:generic.armor_toughness,Base:12}]}
# Start Maycoes' three cycle functions
function atrium:music/loops/maycoesbattle
function atrium:events/maycoes_tm/maycoes_repeat_tick
function atrium:events/maycoes_tm/maycoes_repeat_2s
function atrium:events/maycoes_tm/maycoes_repeat_25s



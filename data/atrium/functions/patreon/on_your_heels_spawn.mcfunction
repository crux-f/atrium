# Summon a marker
summon marker ~ ~ ~ {Tags:["atrium_bounty_hunter_spawn"],CustomName:'{"text":"Bounty Hunter Spawn Point","color":"red"}'}
#
# Randomly pick a place 20-50 blocks away to teleport it to
spreadplayers ~ ~ 20 60 under 300 false @e[tag=atrium_bounty_hunter_spawn]
#
# At each marker, summon the bounty hunter(s)
execute at @e[tag=atrium_bounty_hunter_spawn] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Health:48f,PatrolLeader:1b,Tags:["atrium_bounty_hunter","atrium_hunting"],CustomName:'{"text":"Bounty Hunter"}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Bounty Hunter\'s Crossbow","italic":false}',Lore:['{"text":"Over 10 confirmed kills."}']},atrium_bounty_hunters_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:piercing",lvl:1s},{id:"minecraft:quick_charge",lvl:1s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:harming"}},{},{}],Charged:1b}},{}],HandDropChances:[0.150F,0.085F],Attributes:[{Name:"generic.max_health",Base:48},{Name:"generic.follow_range",Base:40}]}
execute at @e[tag=atrium_bounty_hunter_spawn] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Health:48f,PatrolLeader:0b,Tags:["atrium_bounty_hunter","atrium_hunting"],CustomName:'{"text":"Bounty Hunter"}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Bounty Hunter\'s Crossbow","italic":false}',Lore:['{"text":"Over 10 confirmed kills."}']},atrium_bounty_hunters_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:piercing",lvl:1s},{id:"minecraft:quick_charge",lvl:1s}],Charged:1b}},{}],HandDropChances:[0.150F,0.085F],Attributes:[{Name:"generic.max_health",Base:48},{Name:"generic.follow_range",Base:40}]}
execute at @e[tag=atrium_bounty_hunter_spawn] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Health:48f,PatrolLeader:0b,Tags:["atrium_bounty_hunter","atrium_hunting"],CustomName:'{"text":"Bounty Hunter"}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Bounty Hunter\'s Crossbow","italic":false}',Lore:['{"text":"Over 10 confirmed kills."}']},atrium_bounty_hunters_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:piercing",lvl:1s},{id:"minecraft:quick_charge",lvl:1s}],Charged:1b}},{}],HandDropChances:[0.150F,0.085F],Attributes:[{Name:"generic.max_health",Base:48},{Name:"generic.follow_range",Base:40}]}
#
execute at @e[tag=atrium_bounty_hunter_spawn] run function atrium:summon/summon_poof
# Remove the marker.
kill @e[type=minecraft:marker,tag=atrium_bounty_hunter_spawn]
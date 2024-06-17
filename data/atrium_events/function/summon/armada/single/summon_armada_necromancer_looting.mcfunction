# Summon 1 Armada Necromancer which is currently trying to hide using the summon_armada_looter hiding script
summon minecraft:evoker ~ ~ ~ {Team:"armada",PersistenceRequired:1b,Health:48f,Tags:["atrium_armada_necromancer","atrium_hiding"],CustomName:'{"text":"Armada Necromancer","color":"red","italic":false}',Attributes:[{Name:"generic.max_health",Base:48}]}
#
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/necromancer_repeat
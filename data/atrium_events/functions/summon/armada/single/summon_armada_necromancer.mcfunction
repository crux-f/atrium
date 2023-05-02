# Summon 1 Armada Necromancer
summon evoker ~ ~ ~ {Team:"armada",PersistenceRequired:1b,Health:48f,Tags:["atrium_armada_necromancer"],CustomName:'{"text":"Armada Necromancer","color":"red","italic":false}',Attributes:[{Name:"generic.max_health",Base:48}]}
#
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/necromancer_repeat
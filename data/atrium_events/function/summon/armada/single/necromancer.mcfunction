# Summon 1 Armada Necromancer
summon evoker ~ ~ ~ {Team:"atrium_armada",PersistenceRequired:1b,Health:48f,Tags:["atrium_armada_necromancer"],CustomName:'{"text":"Armada Necromancer","color":"yellow","italic":false}',attributes:[{id:"max_health",base:48}]}
#
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/necromancer_repeat
#
function atrium:summon/summon_poof
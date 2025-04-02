# Summon 1 Living Battering Ram
summon ravager ~ ~ ~ {DeathLootTable:"atrium:empty",Team:"atrium_armada",Health:150f,active_effects:[{id:"minecraft:weaving",amplifier:0,duration:-1}],Tags:["atrium_living_battering_ram"],CustomName:'{"text":"Living Battering Ram","color":"yellow"}',attributes:[{id:"max_health",base:150}]}
#
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/living_battering_ram_repeat
# Visual effects
function atrium:summon/summon_poof
# Summon 1 Living Battering Ram
summon ravager ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:"armada",Health:150f,Tags:["atrium_living_battering_ram"],CustomName:'{"text":"Living Battering Ram","color":"red","italic":false}',Attributes:[{Name:"generic.max_health",Base:150}]}
#
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/living_battering_ram_repeat
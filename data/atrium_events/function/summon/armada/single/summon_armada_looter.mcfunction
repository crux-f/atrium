# Summon 1 Armada Looter
#
summon pillager ~ ~ ~ {Team:"atrium_armada",PersistenceRequired:1b,Health:35f,Tags:["atrium_armada_looter","atrium_hiding"],CustomName:{text:"Armada Looter","color":"yellow","italic":false},equipment:{mainhand:{id:"minecraft:crossbow",count:1,tag:{Enchantments:[{id:"minecraft:piercing",lvl:2s},offhand:{id:"minecraft:quick_charge",lvl:1s}}}},{id:"minecraft:tipped_arrow",count:2,tag:{display:{Name:{text:"Negative Energy Bolt","color":"dark_gray","italic":false},Lore:[{text:"Infused with dark magic,"},{text:"these crossbow bolts are"},{text:"only granted to operatives"},{text:"involved in missions of"},{text:"great import."}]},atrium_negative_energy_bolt:1b,CustomPotionEffects:[{Id:7,Amplifier:0b,Duration:1,ShowParticles:1b}],CustomPotionColor:3158064}}],HandDropChances:[0.000F,0.500F],Attributes:[{Name:"generic.max_health",Base:35}]}
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/looters/looter_hide
#
function atrium:summon/summon_poof
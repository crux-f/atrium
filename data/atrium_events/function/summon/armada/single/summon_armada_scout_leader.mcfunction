# Summon 1 Armada Scout
summon pillager ~ ~ ~ {Team:"atrium_armada",PersistenceRequired:1b,Health:30f,Tags:["atrium_armada_scout","atrium_scouting_party_leader"],CustomName:{text:"Armada Scout","color":"yellow","italic":false},equipment:{mainhand:{id:"minecraft:crossbow",count:1}],Attributes:[{Name:"generic.max_health",Base:30},{Name:"generic.follow_range",Base:10}}}
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/scout_follow
#
function atrium:summon/summon_poof
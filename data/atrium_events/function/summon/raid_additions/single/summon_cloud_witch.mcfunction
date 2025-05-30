# Summons 1 Cloud Witch
summon witch ~ ~ ~ {DeathLootTable:"atrium_events:cloud_witch",Team:"occupied",PersistenceRequired:1b,Health:40f,CanJoinRaid:1b,Tags:["atrium_cloud_witch"],CustomName:{text:"Cloud Witch","color":"red","italic":false},Attributes:[{Name:"generic.max_health",Base:40}]}
#
# Start behavior script in 10 seconds
schedule function atrium_events:summon/raid_additions/behavior_scripts/cloud_witch_behavior 10s
#
# Particles!
function atrium_events:summon/fx/summon_poof

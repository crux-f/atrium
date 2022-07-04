# Summons 1 Cloud Witch
summon witch ~ ~ ~ {DeathLootTable:"atrium:cloud_witch",Team:"occupied",PersistenceRequired:1b,Health:40f,CanJoinRaid:1b,Tags:["cloud_witch"],CustomName:'{"text":"Cloud Witch","color":"red","italic":false}',Attributes:[{Name:generic.max_health,Base:40}]}
#
# Start behavior script in 10 seconds
schedule function atrium:summon/raid_additions/behavior_scripts/cloud_witch_behavior 10s
#
# Particles!
function atrium:summon/fx/summon_poof

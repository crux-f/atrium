# Workaround to Size value not working on structure saving
setblock ~ ~ ~ water
setblock ~ ~1 ~ water
kill @e[distance=..5,tag=atrium_technical_arrow]
summon phantom ~ ~3 ~ {DeathLootTable:"atrium:entities/phanta_ray",PersistenceRequired:1b,Health:100f,Size:30,Tags:["atrium_phanta_ray","atrium_special","atrium_particle","atrium_terror_aura"],CustomName:'{"text":"Phanta Ray","color":"dark_purple"}',Attributes:[{Name:"generic.max_health",Base:100}]}
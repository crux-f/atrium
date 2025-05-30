# Workaround to Size value not working on structure saving
setblock ~ ~ ~ water
setblock ~ ~1 ~ water
kill @e[distance=..5,tag=atrium_technical_arrow]
summon phantom ~ ~3 ~ {attributes: [{base: 100, id: "max_health"}], CustomName: {text:"Phanta Ray","color":"dark_purple"}, DeathLootTable: "atrium:entities/phanta_ray", Health: 100.0f, PersistenceRequired: 1b, Size: 30, Tags: ["atrium_phanta_ray", "atrium_special", "atrium_particle", "atrium_terror_aura"]}
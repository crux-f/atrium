execute at @e[tag=soulmage] run playsound minecraft:entity.vex.charge master @a[distance=..50] ~ ~ ~ 1 0.01 1
execute at @e[tag=soulmage] run playsound minecraft:entity.vex.charge master @a[distance=..50] ~ ~ ~ 1 0.01 1
execute at @e[tag=soulmage] run playsound minecraft:entity.vex.charge master @a[distance=..50] ~ ~ ~ 1 0.01 1
execute at @e[tag=soulmage] run execute at @e[type=minecraft:zombie,distance=..20,limit=10] run summon vex ~ ~ ~ {Glowing:1b,Team:"necromancer",PersistenceRequired:1b,Health:18f,CustomName:'{"text":"Unleashed Soul","color":"green"}',Attributes:[{Name:generic.max_health,Base:18}]}
execute at @e[tag=soulmage] run execute at @e[type=minecraft:husk,distance=..20,limit=10] run summon minecraft:phantom ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Size:9,Tags:["terror"],CustomName:'{"text":"Winged Terror","color":"yellow"}',Attributes:[{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:10},{Name:generic.attack_knockback,Base:3}]}
execute at @e[tag=soulmage] run kill @e[type=minecraft:zombie,distance=..20]
execute at @e[tag=soulmage] run kill @e[type=minecraft:husk,distance=..20]
execute at @e[tag=soulmage] run execute at @e[type=minecraft:vex,distance=..20] run particle minecraft:white_ash ~ ~ ~ 0.3 0.3 0.3 0.5 50 normal
execute at @e[tag=soulmage] run execute at @e[type=minecraft:phantom,distance=..20] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.5 50 normal
execute at @e[tag=soulmage] run execute at @a[gamemode=survival,distance=..20] run summon evoker_fangs ~ ~ ~
execute at @e[tag=soulmage] run particle minecraft:dust 0.180 1.000 0.235 1 ~ ~1 ~ 0.5 0.5 0.5 1 100 normal

execute at @e[tag=standardbearer] run playsound minecraft:entity.vindicator.celebrate master @a[distance=..100] ~ ~ ~ 3 0.7 1
execute at @e[tag=standardbearer] run execute at @e[type=minecraft:pillager,distance=..25] run particle minecraft:angry_villager ~ ~ ~ 0.7 1 0.7 1 60
execute at @e[tag=standardbearer] run execute at @e[type=minecraft:vindicator,distance=..25] run particle minecraft:angry_villager ~ ~ ~ 0.7 1 0.7 1 60
execute at @e[tag=standardbearer] run effect give @e[type=minecraft:pillager,distance=..25] minecraft:speed 20 0
execute at @e[tag=standardbearer] run effect give @e[type=minecraft:vindicator,distance=..25] minecraft:strength 20 0
execute at @e[tag=standardbearer] run effect give @a[distance=..25] minecraft:weakness 20 0
schedule function atrium:events/special/standardbearer 30s


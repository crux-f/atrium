# "Phantoms Learn a New Trick"
#
schedule function atrium_events:patreon/anomalies/nightmares_repeat 10s
# Since size 0 Phantoms start spawning after 3 days...
#
# After 4 days, they increase to size 1.
execute at @a[scores={nightmare_anomaly=96000..}] at @e[type=minecraft:phantom,nbt={Size:0},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.25 0.25 0.02 10 normal
execute at @a[scores={nightmare_anomaly=96000..}] at @e[type=minecraft:phantom,nbt={Size:0},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..30] ~ ~ ~ 2 1 0.1
execute at @a[scores={nightmare_anomaly=96000..}] as @e[type=minecraft:phantom,nbt={Size:0},distance=..50,tag=!minion] run data modify entity @s Size set value 1
# After 5 days, they increase to size 2.
execute at @a[scores={nightmare_anomaly=120000..}] at @e[type=minecraft:phantom,nbt={Size:1},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.25 0.25 0.02 10 normal
execute at @a[scores={nightmare_anomaly=120000..}] at @e[type=minecraft:phantom,nbt={Size:1},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..30] ~ ~ ~ 2 0.95 0.2
execute at @a[scores={nightmare_anomaly=120000..}] as @e[type=minecraft:phantom,nbt={Size:1},distance=..50,tag=!minion] run data modify entity @s Size set value 2
# After 6 days, they increase to size 3.
execute at @a[scores={nightmare_anomaly=144000..}] at @e[type=minecraft:phantom,nbt={Size:2},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.02 20 normal
execute at @a[scores={nightmare_anomaly=144000..}] at @e[type=minecraft:phantom,nbt={Size:2},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..50] ~ ~ ~ 2 0.90 0.3
execute at @a[scores={nightmare_anomaly=144000..}] as @e[type=minecraft:phantom,nbt={Size:2},distance=..50,tag=!minion] run data modify entity @s Size set value 3
# After 7 days, they increase to size 4.
execute at @a[scores={nightmare_anomaly=168000..}] at @e[type=minecraft:phantom,nbt={Size:3},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.02 20 normal
execute at @a[scores={nightmare_anomaly=168000..}] at @e[type=minecraft:phantom,nbt={Size:3},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..50] ~ ~ ~ 2 0.85 0.4
execute at @a[scores={nightmare_anomaly=168000..}] as @e[type=minecraft:phantom,nbt={Size:3},distance=..50,tag=!minion] run data modify entity @s Size set value 4
# After 8 days, they increase to size 5.
execute at @a[scores={nightmare_anomaly=192000..}] at @e[type=minecraft:phantom,nbt={Size:4},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.02 20 normal
execute at @a[scores={nightmare_anomaly=192000..}] at @e[type=minecraft:phantom,nbt={Size:4},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.80 0.5
execute at @a[scores={nightmare_anomaly=192000..}] as @e[type=minecraft:phantom,nbt={Size:4},distance=..50,tag=!minion] run data modify entity @s Size set value 5
#
# After they reach size 5, they start getting Absorption I for 30 minutes.
execute at @a[scores={nightmare_anomaly=192000..}] as @e[type=minecraft:phantom,nbt={Size:5},distance=..50,tag=!minion] run effect give @s absorption 1800 0 false
#
# After 9 days, they increase to size 6.
execute at @a[scores={nightmare_anomaly=216000..}] at @e[type=minecraft:phantom,nbt={Size:5},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.02 30 normal
execute at @a[scores={nightmare_anomaly=216000..}] at @e[type=minecraft:phantom,nbt={Size:5},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.75 0.6
execute at @a[scores={nightmare_anomaly=216000..}] as @e[type=minecraft:phantom,nbt={Size:5},distance=..50,tag=!minion] run data modify entity @s Size set value 6
# After 10 days, they increase to size 7.
execute at @a[scores={nightmare_anomaly=240000..}] at @e[type=minecraft:phantom,nbt={Size:6},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.02 30 normal
execute at @a[scores={nightmare_anomaly=240000..}] at @e[type=minecraft:phantom,nbt={Size:6},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.70 0.6
execute at @a[scores={nightmare_anomaly=240000..}] as @e[type=minecraft:phantom,nbt={Size:6},distance=..50,tag=!minion] run data modify entity @s Size set value 7
# After 11 days, they increase to size 8.
execute at @a[scores={nightmare_anomaly=264000..}] at @e[type=minecraft:phantom,nbt={Size:7},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.02 30 normal
execute at @a[scores={nightmare_anomaly=264000..}] at @e[type=minecraft:phantom,nbt={Size:7},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.65 0.6
execute at @a[scores={nightmare_anomaly=264000..}] as @e[type=minecraft:phantom,nbt={Size:7},distance=..50,tag=!minion] run data modify entity @s Size set value 8
# After 12 days, they increase to size 9.
execute at @a[scores={nightmare_anomaly=288000..}] at @e[type=minecraft:phantom,nbt={Size:8},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.02 30 normal
execute at @a[scores={nightmare_anomaly=288000..}] at @e[type=minecraft:phantom,nbt={Size:8},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.60 0.6
execute at @a[scores={nightmare_anomaly=288000..}] as @e[type=minecraft:phantom,nbt={Size:8},distance=..50,tag=!minion] run data modify entity @s Size set value 9
# After 13 days, they increase to size 10.
execute at @a[scores={nightmare_anomaly=312000..}] at @e[type=minecraft:phantom,nbt={Size:9},distance=..50,tag=!minion] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.02 30 normal
execute at @a[scores={nightmare_anomaly=312000..}] at @e[type=minecraft:phantom,nbt={Size:9},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.55 0.6
execute at @a[scores={nightmare_anomaly=312000..}] as @e[type=minecraft:phantom,nbt={Size:9},distance=..50,tag=!minion] run data modify entity @s Size set value 10
#
# After they reach size 10, they start getting Absorption II for 60 minutes and have a 5% chance of summoning little minions (that don't increase in size) every time this runs
execute at @a[scores={nightmare_anomaly=312000..}] as @e[type=minecraft:phantom,nbt={Size:10},distance=..50,tag=!minion] run effect give @s absorption 3600 1 false
execute at @a[scores={nightmare_anomaly=312000..}] at @e[type=minecraft:phantom,nbt={Size:10},distance=..50,tag=!minion] if predicate atrium:percentage_chances/0.05_p run function atrium_events:patreon/anomalies/summon_little_nightmare
execute at @a[scores={nightmare_anomaly=312000..}] as @e[type=minecraft:phantom,nbt={Size:10},distance=..50,tag=!minion] run tag @s add terror
#
# After 14 days, they increase to size 11.
execute at @a[scores={nightmare_anomaly=336000..}] at @e[type=minecraft:phantom,nbt={Size:10},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.45 0.6
execute at @a[scores={nightmare_anomaly=336000..}] as @e[type=minecraft:phantom,nbt={Size:10},distance=..50,tag=!minion] run data modify entity @s Size set value 11
# After 15 days, they increase to size 12.
execute at @a[scores={nightmare_anomaly=360000..}] at @e[type=minecraft:phantom,nbt={Size:11},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.40 0.6
execute at @a[scores={nightmare_anomaly=360000..}] as @e[type=minecraft:phantom,nbt={Size:11},distance=..50,tag=!minion] run data modify entity @s Size set value 12
# After 16 days, they increase to size 13.
execute at @a[scores={nightmare_anomaly=384000..}] at @e[type=minecraft:phantom,nbt={Size:12},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.35 0.6
execute at @a[scores={nightmare_anomaly=384000..}] as @e[type=minecraft:phantom,nbt={Size:12},distance=..50,tag=!minion] run data modify entity @s Size set value 13
# After 17 days, they increase to size 14.
execute at @a[scores={nightmare_anomaly=408000..}] at @e[type=minecraft:phantom,nbt={Size:13},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.30 0.6
execute at @a[scores={nightmare_anomaly=408000..}] as @e[type=minecraft:phantom,nbt={Size:13},distance=..50,tag=!minion] run data modify entity @s Size set value 14
# After 18 days, they increase to size 15.
execute at @a[scores={nightmare_anomaly=432000..}] at @e[type=minecraft:phantom,nbt={Size:14},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.25 0.6
execute at @a[scores={nightmare_anomaly=432000..}] as @e[type=minecraft:phantom,nbt={Size:14},distance=..50,tag=!minion] run data modify entity @s Size set value 15
#
# After they reach size 15, this is seriously out of hand. They start getting Absorption III and Fire Resistance for 60 minutes.
execute at @a[scores={nightmare_anomaly=432000..}] as @e[type=minecraft:phantom,nbt={Size:15},distance=..50,tag=!minion] run effect give @s absorption 3600 2 false
execute at @a[scores={nightmare_anomaly=432000..}] as @e[type=minecraft:phantom,distance=..50] run effect give @s fire_resistance 3600 0 false
#
# After 19 days, they increase to size 16.
execute at @a[scores={nightmare_anomaly=456000..}] at @e[type=minecraft:phantom,nbt={Size:15},distance=..50,tag=!minion] run particle minecraft:soul ~ ~ ~ 2 2 2 0.02 30 normal
execute at @a[scores={nightmare_anomaly=456000..}] at @e[type=minecraft:phantom,nbt={Size:15},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.20 0.6
execute at @a[scores={nightmare_anomaly=456000..}] as @e[type=minecraft:phantom,nbt={Size:15},distance=..50,tag=!minion] run data modify entity @s Size set value 16
# After 20 days, they increase to size 17.
execute at @a[scores={nightmare_anomaly=480000..}] at @e[type=minecraft:phantom,nbt={Size:16},distance=..50,tag=!minion] run particle minecraft:soul ~ ~ ~ 2 2 2 0.02 30 normal
execute at @a[scores={nightmare_anomaly=480000..}] at @e[type=minecraft:phantom,nbt={Size:16},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.15 0.6
execute at @a[scores={nightmare_anomaly=480000..}] as @e[type=minecraft:phantom,nbt={Size:16},distance=..50,tag=!minion] run data modify entity @s Size set value 17
# After 21 days, they increase to size 18.
execute at @a[scores={nightmare_anomaly=504000..}] at @e[type=minecraft:phantom,nbt={Size:17},distance=..50,tag=!minion] run particle minecraft:soul ~ ~ ~ 2 2 2 0.02 30 normal
execute at @a[scores={nightmare_anomaly=504000..}] at @e[type=minecraft:phantom,nbt={Size:17},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.10 0.6
execute at @a[scores={nightmare_anomaly=504000..}] as @e[type=minecraft:phantom,nbt={Size:17},distance=..50,tag=!minion] run data modify entity @s Size set value 18
# After 22 days, they increase to size 19.
execute at @a[scores={nightmare_anomaly=528000..}] at @e[type=minecraft:phantom,nbt={Size:18},distance=..50,tag=!minion] run particle minecraft:soul ~ ~ ~ 2 2 2 0.02 30 normal
execute at @a[scores={nightmare_anomaly=528000..}] at @e[type=minecraft:phantom,nbt={Size:18},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0.05 0.6
execute at @a[scores={nightmare_anomaly=528000..}] as @e[type=minecraft:phantom,nbt={Size:18},distance=..50,tag=!minion] run data modify entity @s Size set value 19
# After 23 days, they increase to size 20 and stay that way. It goes all the way to 64, but I think this comfortably terrifying enough.
execute at @a[scores={nightmare_anomaly=552000..}] at @e[type=minecraft:phantom,nbt={Size:19},distance=..50,tag=!minion] run particle minecraft:soul ~ ~ ~ 2 2 2 0.02 30 normal
execute at @a[scores={nightmare_anomaly=552000..}] at @e[type=minecraft:phantom,nbt={Size:19},distance=..50,tag=!minion] run playsound minecraft:entity.phantom.ambient hostile @a[distance=..70] ~ ~ ~ 2 0 0.6
execute at @a[scores={nightmare_anomaly=552000..}] as @e[type=minecraft:phantom,nbt={Size:19},distance=..50,tag=!minion] run data modify entity @s Size set value 20
#
# If they've gotten this big, well done. They no longer despawn.
execute at @a[scores={nightmare_anomaly=552000..}] as @e[type=minecraft:phantom,distance=..50] run data modify entity @s PersistenceRequired set value 1b

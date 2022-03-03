#execute as @a[nbt={Inventory:[{Slot:103b,tag:{dishonor:1b}}]}] at @s anchored eyes run effect give @e[distance=1.5..4,limit=1] minecraft:wither 3 1
# execute as @a[nbt={Inventory:[{Slot:103b,tag:{dishonor:1b}}]}] at @s anchored eyes run particle minecraft:smoke ^ ^ ^-0.2 0 0 0 0.01 1 force
# execute in minecraft:overworld as @p[x=847,y=63,z=643,distance=..1] run execute in atrium:between_worlds run tp @s 1544 6 63 facing 1545 6 63
# execute in atrium:between_worlds as @p[x=1545,y=6,z=89,distance=..1] run execute in minecraft:overworld run tp @s 847 63 645 facing 847 63 649
# execute in minecraft:overworld as @p[x=550,y=-5,z=-1290,distance=..10] run execute in atrium:depths run tp @s 550 300 -1290 
execute at @e[tag=fire] run particle minecraft:flame ~ ~1.5 ~ 0.1 0.2 0.1 0.03 8 normal
execute at @e[tag=terror] run particle dust 0.180 1.000 0.235 2 ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal
#
#
#
execute at @e[tag=sniper] run tag @e[type=arrow,distance=5..10] add sniperarrow
data merge entity @e[limit=1,sort=random,tag=sniperarrow,tag=!charged] {Fire:5s,HasVisualFire:0b,crit:1b,Tags:["charged"]}
data merge entity @e[tag=charged,limit=1,nbt={Fire:-1s},sort=random] {NoGravity:1b,SoundEvent:"block.anvil.place"}
#
#
#
execute at @e[gamemode=spectator] anchored eyes run particle minecraft:soul ~ ~ ~ 0 0 0 0 1 force
execute as @e[predicate=atrium:void_tp_meridian] at @s in minecraft:overworld run tp @s ~ ~300 ~
# execute at @a[nbt={Inventory:[{Slot:-106b,tag:{friendship_bracelet:1b}}]},limit=1] if entity @a[distance=3..,nbt={Inventory:[{Slot:-106b,tag:{friendship_bracelet:1b}}]}] run effect give @a[nbt={Inventory:[{Slot:-106b,tag:{friendship_bracelet:1b}}]},limit=2] minecraft:health_boost 3 0 true

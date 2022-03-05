# LEGENDARY ITEM: DISHONOR
#
# execute as @a[nbt={Inventory:[{Slot:103b,tag:{dishonor:1b}}]}] at @s anchored eyes run effect give @e[distance=1.5..4,limit=1] minecraft:wither 3 1
# execute as @a[nbt={Inventory:[{Slot:103b,tag:{dishonor:1b}}]}] at @s anchored eyes run particle minecraft:smoke ^ ^ ^-0.2 0 0 0 0.01 1 force
#
# Various Particles
execute at @e[tag=fire] run particle minecraft:flame ~ ~1.5 ~ 0.1 0.2 0.1 0.03 8 normal
execute at @e[tag=terror] run particle dust 0.180 1.000 0.235 2 ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal
execute at @e[tag=sniper] run data merge entity @e[type=arrow,limit=1,sort=random,nbt=!{life:0}] {crit:1b,PierceLevel:5b,Tags:["aimbot"],SoundEvent:"block.anvil.land"}
execute at @e[tag=sniper] run execute as @e[distance=..100,tag=aimbot] at @s anchored eyes unless entity @p[distance=..1] run teleport @s ^ ^0.05 ^0.5 facing entity @p
execute at @e[gamemode=spectator] anchored eyes run particle minecraft:soul ~ ~ ~ 0 0 0 0 1 force
execute as @e[predicate=atrium:void_tp_meridian] at @s in minecraft:overworld run tp @s ~ 320 ~
# execute at @a[nbt={Inventory:[{Slot:-106b,tag:{friendship_bracelet:1b}}]},limit=1] if entity @a[distance=3..,nbt={Inventory:[{Slot:-106b,tag:{friendship_bracelet:1b}}]}] run effect give @a[nbt={Inventory:[{Slot:-106b,tag:{friendship_bracelet:1b}}]},limit=2] minecraft:health_boost 3 0 true
#
# PATREON
execute as @a[name=shadow_knight6,gamemode=!spectator,nbt={Inventory:[{Slot:103b,tag:{shadow_knight6_item:1b}}]}] at @s run particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0.01 15
execute unless entity @a[tag=domainview] run scoreboard objectives setdisplay sidebar.team.white

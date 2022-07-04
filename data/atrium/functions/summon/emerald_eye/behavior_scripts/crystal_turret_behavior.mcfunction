execute as @e[tag=crystal_turret] at @s if entity @e[tag=crystal_protector,distance=..50] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=crystal_turret] at @s if entity @e[tag=crystal_protector,distance=..50] run particle minecraft:witch ~ ~ ~ 0.15 0.15 0.15 1.25 20
execute at @e[tag=crystal_turret] as @e[tag=crystal_protector,distance=..50] at @s run particle minecraft:witch ~ ~ ~ 0.15 0.15 0.15 1.25 20
#
execute as @e[tag=crystal_turret] at @s unless entity @e[tag=crystal_protector,distance=..50] run data merge entity @s {Invulnerable:0b}
#
execute as @e[tag=crystal_turret] at @s if entity @p[distance=..30,gamemode=!spectator] run scoreboard players add @s misc_timer 1
execute as @e[tag=crystal_turret] at @s if entity @p[distance=..30,gamemode=!spectator] run playsound minecraft:entity.guardian.attack master @a[distance=..50] ~ ~ ~ 1 1 0.75
execute as @e[tag=crystal_turret,scores={misc_timer=60..}] at @s run playsound minecraft:block.beacon.power_select master @a[distance=..50] ~ ~ ~ 0.5 1.2 0.25
execute as @e[tag=crystal_turret,scores={misc_timer=60..}] at @s store result entity @s BeamTarget.X int 1 run data get entity @p[distance=..30,gamemode=!spectator] Pos[0] 1
execute as @e[tag=crystal_turret,scores={misc_timer=60..}] at @s store result entity @s BeamTarget.Y int 1 run data get entity @p[distance=..30,gamemode=!spectator] Pos[1] 1
execute as @e[tag=crystal_turret,scores={misc_timer=60..}] at @s store result entity @s BeamTarget.Z int 1 run data get entity @p[distance=..30,gamemode=!spectator] Pos[2] 1
execute as @e[tag=crystal_turret,scores={misc_timer=60..}] at @s run effect give @p[distance=..30,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute as @e[tag=crystal_turret,scores={misc_timer=60..}] at @s run execute at @p[distance=..30,gamemode=!spectator] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
execute as @e[tag=crystal_turret,scores={misc_timer=80..}] run scoreboard players set @s misc_timer 0
execute as @e[tag=crystal_turret] at @s unless entity @p[distance=..30] run scoreboard players set @s misc_timer 0
execute as @e[tag=crystal_turret,scores={misc_timer=0}] store result entity @s BeamTarget.X int 1 run data get entity @s Pos[0] 1
execute as @e[tag=crystal_turret,scores={misc_timer=0}] store result entity @s BeamTarget.Y int 1 run data get entity @s Pos[1] 1
execute as @e[tag=crystal_turret,scores={misc_timer=0}] store result entity @s BeamTarget.Z int 1 run data get entity @s Pos[2] 1
#
# If the entity is alive run the script again in 1 tick
execute if entity @e[tag=crystal_turret] run schedule function atrium:summon/emerald_eye/behavior_scripts/crystal_turret_behavior 1t

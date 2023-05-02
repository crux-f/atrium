# Set the ritual's timer each tick to the number of participants in range
execute as @e[tag=atrium_crystal_ritual_center] at @s run execute as @e[tag=atrium_crystal_protector,distance=..7] run scoreboard players add @e[tag=atrium_crystal_ritual_center,distance=..7,limit=1] ritual_timer 1
#
# Refresh ritual timer if there are still entities performing the ritual and the ritual has not yet been completed
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=..7200}] at @s if entity @e[tag=atrium_crystal_protector,distance=..7] run data merge entity @s {Age:0}
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=..7200}] at @s as @e[tag=atrium_ritual_effect_cloud,distance=..10] run data merge entity @s {Age:0}
#
# Once the score reaches 7200 (45 seconds IF all participants survive), the ritual completes. Run particles and sound, summon the crystal and start its behavior script, and tell the ritualists they're allowed to move again.
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=7200..}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 2
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=7200..}] at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..30] ~ ~ ~ 1 0.35 0.1
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=7200..}] at @s run execute as @e[tag=atrium_crystal_protector,distance=..20] run attribute @s minecraft:generic.movement_speed base set 0.35
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=7200..}] at @s run summon end_crystal ~ ~ ~ {ShowBottom:0b,Tags:["atrium_crystal_turret"],CustomName:'{"text":"Crystal Turret","color":"red","italic":false}'}
execute as @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=7200..}] run function atrium_events:summon/emerald_eye/behavior_scripts/crystal_turret_behavior
#
# Schedule to run again in 1 tick
execute if entity @e[tag=atrium_crystal_ritual_center,scores={ritual_timer=..7199}] run schedule function atrium_events:summon/emerald_eye/behavior_scripts/crystal_turret_ritual_behavior 1t

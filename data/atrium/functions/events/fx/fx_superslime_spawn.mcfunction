# add 1 event_misc to display_slime entity
scoreboard players add @e[tag=display_slime] event_misc 1
# at the display_slime, do the particle things and sounds
execute at @e[tag=display_slime,scores={event_misc=1}] run particle minecraft:dust 0.161 1.000 0.161 2 ~ ~ ~ 0.5 0.5 0.5 1 40 normal
execute at @e[tag=display_slime,scores={event_misc=1}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..50] ~ ~ ~ 1 1 0.1
execute at @e[tag=display_slime,scores={event_misc=2}] run particle minecraft:dust 0.161 1.000 0.161 2 ~ ~ ~ 1 1 1 1 40 normal
execute at @e[tag=display_slime,scores={event_misc=2}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..50] ~ ~ ~ 1 1.2 0.1 
execute at @e[tag=display_slime,scores={event_misc=3}] run particle minecraft:dust 0.161 1.000 0.161 2 ~ ~ ~ 2.5 2.5 2.5 1 40 normal
execute at @e[tag=display_slime,scores={event_misc=3}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..50] ~ ~ ~ 1 1.5 0.1 
# run again unless we've already run it 3 times
execute unless entity @e[tag=display_slime,scores={event_misc=3..}] run schedule function atrium:events/fx/fx_superslime_spawn 10t
# actually spawn the slime 2 seconds after this sequence
schedule function atrium:events/superslime_spawn 2s

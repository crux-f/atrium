# Each disc does a different thing within a 15-block range
#
# Song: z | Duration: 2:40 | Particles: 
execute at @e[type=item,tag=song_spell_z,scores={charge=29..132}] run effect give @e[distance=..15,gamemode=!spectator] minecraft:glowing 3 0 false
execute at @e[type=item,tag=song_spell_z,scores={charge=133..160}] run effect give @e[distance=..15,gamemode=!spectator] minecraft:darkness 5 0 false
execute at @e[type=item,tag=song_spell_z,scores={charge=29..132}] run particle minecraft:note ~ ~1 ~ 2 4 10 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[type=item,tag=song_spell_z] charge 1
#
# Turn the disc back to a normal item
execute as @e[type=item,tag=song_spell_z,scores={charge=161..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[type=item,tag=song_spell_z,scores={charge=161..}] run tag @s remove song_spell_z
#
# Punishment
execute at @e[type=item,tag=song_spell_z,scores={charge=161..}] as @p[gamemode=!spectator,tag=atrium_song_caster,distance=..30] run function atrium:structures/z/unfair_trap
# If there is still a disc, run again in 1 second.
execute if entity @e[type=item,tag=song_spell_z] run schedule function atrium:triggers/magic/spells/song/ss_z 1s
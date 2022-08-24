# Each disc does a different thing within a 15-block range
#
# Song: Wait | Duration: 3:54 | Saturation I to all players | Particles: Light Blue
execute at @e[tag=song_spell_wait] run effect give @a[distance=..15,gamemode=!spectator] minecraft:saturation 25 0 false
execute at @e[tag=song_spell_wait] run particle minecraft:note ~ ~1 ~ 7.5 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_wait] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_wait,scores={charge=234..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_wait,scores={charge=234..}] run tag @s remove song_spell_wait
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_wait] run schedule function atrium:magic/magicitems/spells/song_spell/ss_wait 1s
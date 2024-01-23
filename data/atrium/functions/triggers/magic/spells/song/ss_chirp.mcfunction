# Each disc does a different thing within a 15-block range
#
# Song: Chirp | Duration: 3:07 | Jump Boost I to all entities | Particles: Red
execute at @e[tag=song_spell_chirp] run effect give @e[distance=..15,gamemode=!spectator] minecraft:jump_boost 2 0 false
execute at @e[tag=song_spell_chirp] run particle minecraft:note ~ ~1 ~ 2.45 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_chirp] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_chirp,scores={charge=187..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_chirp,scores={charge=187..}] run tag @s remove song_spell_chirp
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_chirp] run schedule function atrium:triggers/magic/spells/song/ss_chirp 1s
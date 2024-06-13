# Each disc does a different thing within a 15-block range
#
# Song: Blocks | Duration: 5:43 | Grants Haste to all players | Particles: Red-Orange
execute at @e[tag=song_spell_blocks] run effect give @a[distance=..15,gamemode=!spectator] minecraft:haste 2 0 false
execute at @e[tag=song_spell_blocks] run particle minecraft:note ~ ~1 ~ 1.5 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_blocks] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_blocks,scores={charge=343..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_blocks,scores={charge=343..}] run tag @s remove song_spell_blocks
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_blocks] run schedule function atrium:triggers/magic/spells/song/ss_blocks 1s
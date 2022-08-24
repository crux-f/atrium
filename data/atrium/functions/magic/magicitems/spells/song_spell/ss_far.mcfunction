# Each disc does a different thing within a 15-block range
#
# Song: Far | Duration: 2:54 | Dolphin's Grace I to all entities | Particles: Sea Green
execute at @e[tag=song_spell_far] run effect give @e[distance=..15,gamemode=!spectator] minecraft:dolphins_grace 2 0 false
execute at @e[tag=song_spell_far] run particle minecraft:note ~ ~1 ~ 8.2 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_far] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_far,scores={charge=174..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_far,scores={charge=174..}] run tag @s remove song_spell_far
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_far] run schedule function atrium:magic/magicitems/spells/song_spell/ss_far 1s
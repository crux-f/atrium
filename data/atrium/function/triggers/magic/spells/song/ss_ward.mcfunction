# Each disc does a different thing within a 15-block range
#
# Song: Ward | Duration: 4:10 | Resistance I to all entities | Particles: Off-Green + Dark Blue
execute at @e[tag=song_spell_ward] run effect give @e[distance=..15,gamemode=!spectator] minecraft:resistance 2 0 false
execute at @e[tag=song_spell_ward] run particle minecraft:note ~ ~1 ~ 0.5 0 0 0.1 0 normal
execute at @e[tag=song_spell_ward] run particle minecraft:note ~ ~1 ~ 6.2 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_ward] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_ward,scores={charge=250..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_ward,scores={charge=250..}] run tag @s remove song_spell_ward
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_ward] run schedule function atrium:triggers/magic/spells/song/ss_ward 1s
# Each disc does a different thing within a 15-block range
#
# Song: Mall | Duration: 3:18 | Water Breathing to all entities | Particles: Dark Purple
execute at @e[tag=song_spell_mall] run effect give @e[distance=..15,gamemode=!spectator] minecraft:water_breathing 2 0 false
execute at @e[tag=song_spell_mall] run particle minecraft:note ~ ~1 ~ 5 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_mall] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_mall,scores={charge=198..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_mall,scores={charge=198..}] run tag @s remove song_spell_mall
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_mall] run schedule function atrium:triggers/magic/spells/song/ss_mall 1s
# Each disc does a different thing within a 15-block range
#
# Song: Cat | Duration: 3:06 | Grants Night Vision to all players | Particles: Green
execute at @e[tag=song_spell_cat] run effect give @a[distance=..15,gamemode=!spectator] minecraft:night_vision 15 0 false
execute at @e[tag=song_spell_cat] run particle minecraft:note ~ ~1 ~ 0 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_cat] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_cat,scores={charge=186..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_cat,scores={charge=186..}] run tag @s remove song_spell_cat
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_cat] run schedule function atrium:triggers/magic/spells/song/ss_cat 1s
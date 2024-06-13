# Each disc does a different thing within a 15-block range
#
# Song: Relic | Duration: 3:38 | Luck I to all players | Particles: Cyan
execute at @e[tag=song_spell_relic] run effect give @a[distance=..15,gamemode=!spectator] minecraft:luck 2 0 false
execute at @e[tag=song_spell_relic] run particle minecraft:note ~ ~1 ~ 7.75 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_relic] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_relic,scores={charge=250..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_relic,scores={charge=250..}] run tag @s remove song_spell_relic
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_relic] run schedule function atrium:triggers/magic/spells/song/ss_relic 1s
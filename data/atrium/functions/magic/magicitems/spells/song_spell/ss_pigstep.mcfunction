# Each disc does a different thing within a 15-block range
#
# Song: Pigstep | Duration: 2:28 | Fire Resistance to all entities; 15% chance of Nausea (5s) to all players (per run) | Particles: Red (slightly darker than Chirp)
execute at @e[tag=song_spell_pigstep] run effect give @e[distance=..15,gamemode=!spectator] minecraft:fire_resistance 2 0 false
execute at @e[tag=song_spell_pigstep] if predicate atrium:percentage_chances/0.15_p run effect give @a[distance=..15,gamemode=!spectator] minecraft:nausea 5 0 false
execute at @e[tag=song_spell_pigstep] run particle minecraft:note ~ ~1 ~ 2.7 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_pigstep] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_pigstep,scores={charge=148..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_pigstep,scores={charge=148..}] run tag @s remove song_spell_pigstep
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_pigstep] run schedule function atrium:magic/magicitems/spells/song_spell/ss_pigstep 1s
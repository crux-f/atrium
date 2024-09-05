# Each disc does a different thing within a 15-block range
#
# Song: Ward | Duration: 4:59 | Strength I to all entities; 25% chance of special effect
# on 3 random non-player entities IF trial is ominous | Particles: Brown + Copper Scraping
execute at @e[tag=song_spell_precipice] run effect give @e[distance=..15,gamemode=!spectator] minecraft:strength 2 0 false
execute at @e[tag=song_spell_precipice] if entity @p[distance=..15,gamemode=!spectator,predicate=atrium:effects/if_trial_omen_any] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/magic/spells/song/ominous_trial_boost
execute at @e[tag=song_spell_precipice] run particle minecraft:note ~ ~1 ~ 1 0 1 0.1 0 normal
execute at @e[tag=song_spell_precipice] run particle minecraft:scrape ~ ~1 ~ 0.1 0.1 0.1 0.02 5
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_precipice] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_precipice,scores={charge=299..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_precipice,scores={charge=299..}] run tag @s remove song_spell_precipice
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_precipice] run schedule function atrium:triggers/magic/spells/song/ss_precipice 1s
# Tag caster
tag @s add atrium_song_caster
#
# Casting SFX
playsound minecraft:block.note_block.hat player @a[distance=..20] ~ ~ ~ 1 0.75 0.5
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
#
# Putting this in to stop people from making this spell annoying as hell
execute at @s if entity @e[tag=atrium_floating_disc,distance=..20] run playsound minecraft:block.wool.break player @a[distance=..3] ~ ~ ~ 1 1 0.1
execute at @s if entity @e[tag=atrium_floating_disc,distance=..20] run particle smoke ~ ~1.25 ~ 0.5 0.5 0.5 0.5 25 normal
execute at @s if entity @e[tag=atrium_floating_disc,distance=..20] run tellraw @s {"text":"Nobody would want any clashing notes.","italic":true,"color":"gray"}
# Run the next script 3 seconds later UNLESS there is already a floating disc within 20 blocks.
execute at @s unless entity @e[tag=atrium_floating_disc,distance=..20] run schedule function atrium:triggers/magic/spells/song_complete 3s
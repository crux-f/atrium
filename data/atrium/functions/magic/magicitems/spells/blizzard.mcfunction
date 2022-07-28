# Remove 1 Life's Echo (casting component cost)
clear @s minecraft:lapis_lazuli{submerged_gemstone:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s run particle dust_color_transition 0.710 0.973 1.000 2 1.000 1.000 1.000 ~ ~1 ~ 0.5 0.5 0.5 0.25 50 normal
execute at @s run playsound minecraft:entity.player.hurt_freeze player @a[distance=..15] ~ ~ ~ 0.75 0.25 0.1
#
# Reset the blizzard counter in case the player disconnected mid spell.
scoreboard players set @s blizzard_spell 0
# Start the blizzard.
tag @s add blizzard_spell_center
function atrium:magic/magicitems/spells/blizzard_repeat
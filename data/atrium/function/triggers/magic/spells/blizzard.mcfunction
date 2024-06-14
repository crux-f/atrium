#
# SFX
execute at @s run particle dust_color_transition{from_color:[0.710,0.973,1.000],scale:2,to_color:[1.000,1.000,1.000]} ~ ~ ~ 0.5 0.5 0.5 0.25 50 normal
execute at @s run playsound minecraft:entity.player.hurt_freeze player @a[distance=..15] ~ ~ ~ 0.75 0.25 0.1
#
# Reset the blizzard counter in case the player disconnected mid spell.
scoreboard players set @s atrium_blizzard_spell 0
# Start the blizzard.
tag @s add atrium_blizzard_caster
function atrium:triggers/magic/spells/blizzard_repeat
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
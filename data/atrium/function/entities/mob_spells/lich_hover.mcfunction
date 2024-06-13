# Cast by Lich. Redirected from mob_spell_charge OR from atrium:structures/sanctum/behavior_scripts/lich_idle
#
# Remove gravity.
data merge entity @s {Motion:[0.0,0.1,0.0],NoGravity:1b}
# Particles
function atrium:summon/summon_poof
playsound minecraft:entity.wither.ambient hostile @a[distance=..15] ~ ~ ~ 0.5 2 0.1
effect give @s minecraft:slow_falling 600 0 true
# Reset score
scoreboard players set @s charge 0
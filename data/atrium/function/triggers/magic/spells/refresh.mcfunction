# SFX
execute at @e[type=!#minecraft:undead,distance=..15] run particle dust_color_transition{from_color:[0.075,0.051,0.729],scale:1,to_color:[0.090,0.761,0.580]} ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
execute at @e[type=!#minecraft:undead,distance=..15] run playsound minecraft:item.bucket.empty_axolotl player @a[distance=..3] ~ ~ ~ 0.5 1 0.1
# Heal all entities that aren't undead within a 15-block radius
effect give @e[type=!#minecraft:undead,distance=..15] minecraft:instant_health 1 0
effect give @e[type=!#minecraft:undead,distance=..15] minecraft:regeneration 8 2
# Spell cleanup
function atrium:triggers/magic/spell_cast_complete
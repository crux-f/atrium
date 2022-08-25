# Remove 1 Life's Echo (casting component cost)
clear @s minecraft:stripped_warped_hyphae{lifes_echo:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s at @e[type=!#atrium:undead,distance=..15] run particle dust_color_transition 0.212 0.553 1.000 1 0.169 1.000 0.475 ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
execute at @s at @e[type=!#atrium:undead,distance=..15] run playsound minecraft:item.bucket.empty_axolotl player @a[distance=..3] ~ ~ ~ 0.5 1 0.1
# Heal all entities that aren't undead within a 15-block radius
execute at @s run effect give @e[type=!#atrium:undead,distance=..15] regeneration 5 2
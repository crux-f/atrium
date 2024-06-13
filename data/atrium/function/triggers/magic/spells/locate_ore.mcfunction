# FX
particle dust_color_transition 0.749 0.749 0.749 2 0.722 1.000 0.702 ~ ~ ~ 1.5 0 0 1 50 normal
particle dust_color_transition 0.749 0.749 0.749 2 0.722 1.000 0.702 ~ ~ ~ 0 0 1.5 1 50 normal
playsound minecraft:block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 0.9 0.25 0.1
#
# Scan the 3x3 cube around you for ores...
execute positioned ~ ~1 ~ run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
# Along with another 3x3 cube on the +Z side...
execute positioned ~ ~1 ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
# And another 3x3 cube on the -Z side...
execute positioned ~ ~1 ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
# And another 3x3 cube on the +X side...
execute positioned ~3 ~1 ~ run function atrium:triggers/magic/spells/locate_ore_3x3_cube
# And another 3x3 cube on the -X side...
execute positioned ~-3 ~1 ~ run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
# And another 3x3 cube on the +Y side...
execute positioned ~ ~4 ~ run function atrium:triggers/magic/spells/locate_ore_3x3_cube
# And finally, another 3x3 cube on the -Y side.
execute positioned ~ ~-2 ~ run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
# Lets give the caster the corners, too.
execute positioned ~3 ~ ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~-3 ~ ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~3 ~ ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~-3 ~ ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
execute positioned ~3 ~4 ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~-3 ~4 ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~3 ~4 ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~-3 ~4 ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
execute positioned ~3 ~-2 ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~-3 ~-2 ~3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~3 ~-2 ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
execute positioned ~-3 ~-2 ~-3 run function atrium:triggers/magic/spells/locate_ore_3x3_cube
#
# LEVEL 3 ONLY - Scan out to 15x15
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]}] run function atrium:triggers/magic/spells/locate_ore_additional_range
#
# Glow
team join atrium_glow_black @e[tag=atrium_coal_marker]
team join atrium_glow_gray @e[tag=atrium_iron_marker]
team join atrium_glow_gold @e[tag=atrium_gold_marker]
team join atrium_glow_dark_green @e[tag=atrium_copper_marker]
team join atrium_glow_blue @e[tag=atrium_lapis_marker]
team join atrium_glow_red @e[tag=atrium_redstone_marker]
team join atrium_glow_aqua @e[tag=atrium_diamond_marker]
team join atrium_glow_green @e[tag=atrium_emerald_marker]
team join atrium_glow_white @e[tag=atrium_quartz_marker]
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

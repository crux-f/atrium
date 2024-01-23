# SFX
execute at @s at @a[distance=..20,predicate=atrium:player/is_sneaking] run particle minecraft:end_rod ~ ~ ~ 0 0.25 0 0.1 20
execute at @s at @a[distance=..20,predicate=atrium:player/is_sneaking] run playsound minecraft:block.wool.step player @a[distance=..2] ~ ~ ~ 1 0.5 0.1
#
# Set all the 'atrium_hiding' score of all sneaking players within 20 blocks to 1
execute at @s as @a[distance=..20,predicate=atrium:player/is_sneaking] run scoreboard players set @s atrium_hiding 1
#
# If someone has atrium_hiding 1, start the repeat script
execute if entity @a[scores={atrium_hiding=1..}] run function atrium:triggers/magic/spells/hush_repeat
# Spell cleanup
function atrium:triggers/magic/spell_cast_complete
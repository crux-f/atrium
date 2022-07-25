# Reset natural armor score to 0
scoreboard players set @s natural_armor 0
# AS all players that meet the spell requirements run particles
execute at @s anchored eyes run particle minecraft:happy_villager ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Add natural armor 1 tag to caster
tag @s add natural_armor2
# Run the natural armor repeat cycle 
function atrium:magic/magicitems/spells/natural_armor2_repeat
# Sound effect
execute at @s run playsound minecraft:block.lodestone.place player @a[distance=..30] ~ ~ ~ 1 0.8 0.1
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
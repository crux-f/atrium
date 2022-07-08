# Reset natural armor score to 0
scoreboard players set @a[predicate=atrium:natural_armor_3_req] natural_armor 0
# AS all players that meet the spell requirements run particles
execute as @a[predicate=atrium:natural_armor_3_req] at @s anchored eyes run particle minecraft:happy_villager ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Add natural armor 1 tag to caster
tag @a[predicate=atrium:natural_armor_3_req] add natural_armor2
# Run the natural armor repeat cycle 
function atrium:magic/magicitems/spells/natural_armor3_repeat
# Sound effect
execute as @a[predicate=atrium:natural_armor_3_req] at @s run playsound minecraft:block.lodestone.place player @a[distance=..30] ~ ~ ~ 1 0.8 0.1
# adds tag to take spell component and reset casting time
tag @a[predicate=atrium:natural_armor_3_req] add natural_armor_caster
clear @a[tag=natural_armor_caster] minecraft:redstone 1
scoreboard players set @a[tag=natural_armor_caster] earthstaff 0
# removes tag
tag @a[tag=natural_armor_caster] remove natural_armor_caster

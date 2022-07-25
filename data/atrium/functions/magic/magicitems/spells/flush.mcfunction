# Already has caster position(s) stored from charge script
#
# Remove 1 Mysterious Fish (casting component cost)
clear @s minecraft:tropical_fish{mysterious_fish:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# Particles!
execute at @s at @e[distance=..10,predicate=atrium:effects/if_any_effect] run particle minecraft:bubble_pop ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal
execute at @s at @e[distance=..10,predicate=atrium:effects/if_any_effect] run particle minecraft:ambient_entity_effect ~ ~1 ~ 0.5 0.5 0.5 0.1 25 normal
execute at @s run particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 1 150 normal
#
# SFX
execute at @s at @e[distance=..10,predicate=atrium:effects/if_any_effect] run playsound minecraft:entity.player.splash player @a[distance=..5] ~ ~ ~ 0.5 2 0.1
execute at @s run playsound minecraft:ambient.underwater.exit player @a[distance=..30] ~ ~ ~ 1 1.45 0.1
# Flush removes all potion effects from anyone in a radius. Good for removing negative status effects or removing positive ones from enemies
execute at @s run effect clear @e[distance=..10]



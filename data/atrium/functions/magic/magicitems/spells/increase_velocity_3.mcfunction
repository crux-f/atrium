# AS all players that meet the spell requirements run particles
execute at @s anchored eyes run particle minecraft:poof ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
execute at @s anchored feet run particle minecraft:explosion ~ ~ ~ 0 0 0 0.5 1
# Give every caster who is sprinting speed 3 for 36 seconds, and every caster who is not sprinting jump boost 3 for 36 seconds.
effect give @s[predicate=atrium:if_sprinting] minecraft:speed 120 2
effect give @s[predicate=atrium:if_not_sprinting] minecraft:jump_boost 120 2
# Sound effect
execute at @s run playsound minecraft:ui.toast.out player @a[distance=..30] ~ ~ ~ 15 0.8 1
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
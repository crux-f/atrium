# AS all players that meet the spell requirements run particles
execute at @s anchored eyes run particle minecraft:poof ^-0.4 ^-0.05 ^0.5 0 0 0 0 4
# Give every caster who is sprinting speed 2 for 24 seconds, and every caster who is not sprinting jump boost 2 for 24 seconds.
effect give @s[predicate=atrium:if_sprinting] minecraft:speed 120 1
effect give @s[predicate=atrium:if_not_sprinting] minecraft:jump_boost 120 1
# Sound effect
execute at @s run playsound minecraft:ui.toast.out player @a[distance=..30] ~ ~ ~ 15 0.8 1
# adds tag to take spell component and reset casting time
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
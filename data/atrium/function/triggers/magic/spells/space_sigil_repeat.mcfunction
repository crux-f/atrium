# Particle animations

execute at @e[tag=atrium_space_sigil_dummy] run particle dust_color_transition{from_color:[0.318,0.267,0.431],scale:1,to_color:[0.180,0.180,0.180]} ^0.4 ^ ^ 0 0 0 0.1 1 normal
execute at @e[tag=atrium_space_sigil_dummy] run particle dust_color_transition{from_color:[0.318,0.267,0.431],scale:1,to_color:[0.180,0.180,0.180]} ^-0.4 ^ ^ 0 0 0 0.1 1 normal
execute at @e[tag=atrium_space_sigil_dummy] run particle dust_color_transition{from_color:[0.318,0.267,0.431],scale:1,to_color:[0.180,0.180,0.180]} ^ ^ ^0.4 0 0 0 0.1 1 normal
execute at @e[tag=atrium_space_sigil_dummy] run particle dust_color_transition{from_color:[0.318,0.267,0.431],scale:1,to_color:[0.180,0.180,0.180]} ^ ^ ^-0.4 0 0 0 0.1 1 normal
execute as @e[tag=atrium_space_sigil_dummy] at @s run tp @s ~ ~ ~ ~-2.5 ~0
#
execute at @e[tag=atrium_space_sigil_decor_pearl] run particle minecraft:portal ~ ~ ~ 0 0 0 1.2 1 normal
execute at @e[tag=atrium_space_sigil_decor_pearl] run particle minecraft:portal ~ ~ ~ 0 0 0 1 3 normal
# At the end of the sigil's duration...
# Level 1 - - - - - - - - -
# VFX + SFX At sigil
execute if entity @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @e[tag=atrium_space_sigil_dummy] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @e[tag=atrium_space_sigil_dummy] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1 0.1
# VFX + SFX At caster
execute if entity @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @a[tag=atrium_space_sigil_hook] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @e[tag=atrium_space_sigil_hook] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1 0.1
# Teleport all "hooked" players to the nearest space sigil
execute if entity @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @e[tag=atrium_space_sigil_dummy] run tp @p[gamemode=!spectator,tag=atrium_space_sigil_hook] ~ ~ ~
#
# Level 2 - - - - - - - - -
# VFX + SFX At sigil
execute if entity @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @e[tag=atrium_space_sigil_dummy] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @e[tag=atrium_space_sigil_dummy] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1 0.1
# VFX + SFX At caster
execute if entity @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @a[tag=atrium_space_sigil_hook] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @e[tag=atrium_space_sigil_hook] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1 0.1
# Teleport all "hooked" players to the nearest space sigil
execute if entity @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @e[tag=atrium_space_sigil_dummy] run tp @p[gamemode=!spectator,tag=atrium_space_sigil_hook] ~ ~ ~
#
# Level 3 - - - - - - - - -
# VFX + SFX At sigil
execute if entity @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @e[tag=atrium_space_sigil_dummy] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @e[tag=atrium_space_sigil_dummy] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1 0.1
# VFX + SFX At caster
execute if entity @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @a[tag=atrium_space_sigil_hook] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 50
execute if entity @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @e[tag=atrium_space_sigil_hook] run playsound minecraft:entity.enderman.teleport master @a[distance=..10] ~ ~ ~ 1 1 0.1
# Teleport all "hooked" players to the nearest space sigil
execute if entity @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @e[tag=atrium_space_sigil_dummy] run tp @p[gamemode=!spectator,tag=atrium_space_sigil_hook] ~ ~ ~
#
# Remove the dummy
execute as @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @s run kill @e[tag=atrium_space_sigil_dummy,limit=1,sort=nearest]
execute as @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @s run kill @e[tag=atrium_space_sigil_dummy,limit=1,sort=nearest]
execute as @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @s run kill @e[tag=atrium_space_sigil_dummy,limit=1,sort=nearest]
#
# Remove the decor_pearl
execute as @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @s run kill @e[tag=atrium_space_sigil_decor_pearl,limit=1,sort=nearest]
execute as @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @s run kill @e[tag=atrium_space_sigil_decor_pearl,limit=1,sort=nearest]
execute as @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @s run kill @e[tag=atrium_space_sigil_decor_pearl,limit=1,sort=nearest]
#
# Remove the "hooked" tag
execute as @e[tag=atrium_space_sigil,nbt={Age:199},scores={charge=1}] at @s run tag @p[gamemode=!spectator] remove atrium_space_sigil_hook
execute as @e[tag=atrium_space_sigil,nbt={Age:299},scores={charge=2}] at @s run tag @p[gamemode=!spectator] remove atrium_space_sigil_hook
execute as @e[tag=atrium_space_sigil,nbt={Age:399},scores={charge=3}] at @s run tag @p[gamemode=!spectator] remove atrium_space_sigil_hook
#
# Continue running the script until the sigil expires
execute if entity @e[tag=atrium_space_sigil] run schedule function atrium:triggers/magic/spells/space_sigil_repeat 1t


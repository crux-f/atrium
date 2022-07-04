# Revoke advancement to allow for re-trigger
advancement revoke @s only atrium:triggers/potions/drink_prism_draft
#
#
# Reset the player's prismatic score
scoreboard players set @s prismatic 0
#
# Grant the drinker the custom "Prismatic" effect (lasts 30 minutes).
execute as @s run function atrium:triggers/potion_effects/prismatic
#
#
# SFX
playsound minecraft:entity.chicken.egg player @a[distance=..5] ~ ~ ~ 1 2 1
execute as @s anchored eyes run particle dust -100 -100 -100 3 ^ ^ ^ 0.5 0.5 0.5 0.1 200 normal
execute as @s anchored eyes run particle minecraft:flash ^ ^ ^ 0.1 0.1 0.1 1 1

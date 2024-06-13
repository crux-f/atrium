# Add 1 to their atrium_blizzard_spell score.
scoreboard players add @s atrium_blizzard_spell 1
# Every 40 ticks (2 seconds), they take 1 freezing damage.
# Note: The game will automatically not deal the damage if the player is immune to freezing damage (wearing leather armor).
execute if score @s atrium_blizzard_spell matches 40.. run damage @s 1 minecraft:freeze by @a[tag=atrium_blizzard_caster,limit=1,sort=nearest]
#
# Reset score after damage
execute if score @s atrium_blizzard_spell matches 40.. run scoreboard players reset @s atrium_blizzard_spell
#
# If the entity isn't a player, set their TicksFrozen data to maximum to make them shake because they're chilly.
execute if entity @s[type=!minecraft:player] run data merge entity @s {TicksFrozen:140}
#
# Leather armor makes players immune to the freezing damage, but not the slowness. Because I said so.
# Slowness I!
effect give @s minecraft:slowness 3 0 false
# Re-designing this so it works either A: with the old system (activated by a command block when a button is pressed) or
# B: with the new system (when an offering bowl is right-clicked which triggers an advancement).
#
# Unless the thing running this function is a player, run it as the nearest player within 8 instead.
# (This system A to still work)
execute unless entity @s[type=player] as @p[distance=..8,gamemode=!spectator] at @s run function atrium:shrines/blessings/chorus_prayer
#
# If a player is running it via advancement (system B), make sure it runs as the player but at the coords of the display entity
execute if entity @s[type=player] at @s at @n[type=item_display,tag=atrium_chorus_shrine_display] run function atrium:shrines/blessings/chorus_prayer
#
# If using system B, remove the trigger advancement so this can trigger again in the future.
execute if entity @s[type=player] run advancement revoke @s only atrium:triggers/shrines/activate_chorus_shrine
#
# Grant shrine advancement (using "at @s" to cover system B too)
execute at @s run advancement grant @p[distance=..8,gamemode=!spectator] until atrium:belief/higher_power
#
# Old resurrection system (probably still works if re-enabled?)
# execute as @p[distance=..8,gamemode=!spectator] unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_apple"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] run function atrium:shrines/blessings/aurora_prayer
#
# If the player is holding a Golden Apple, start the Resurrection script.
# execute as @p[distance=..8,gamemode=!spectator] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_apple"}}] at @s run function atrium:shrines/resurrection/resurrect_start
# If the player is holding a Enchanted Golden Apple, start the Resurrect All Nearby Players script.
# execute as @p[distance=..8,gamemode=!spectator] if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] at @s run function atrium:shrines/resurrection/resurrect_all_start
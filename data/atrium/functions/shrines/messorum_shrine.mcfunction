# Grant shrine advancement
advancement grant @p[distance=..8,gamemode=!spectator] until atrium:belief/higher_power
# If the player is holding a Golden Apple, start the Resurrection script.
execute as @p[distance=..8,gamemode=!spectator] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_apple"}}] at @s run function atrium:shrines/resurrection/resurrect_start
# If the player is holding a Enchanted Golden Apple, start the Resurrect All Nearby Players script.
execute as @p[distance=..8,gamemode=!spectator] if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] at @s run function atrium:shrines/resurrection/resurrect_all_start
# If none of the above are true, start the Prayer script.
execute as @p[distance=..8,gamemode=!spectator] unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_apple"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] run function atrium:shrines/blessings/messorum_prayer
# If the player has spawned in already, take them to their elemental start.
execute positioned ~ ~2 ~ as @p[gamemode=!spectator] if entity @s[advancements={atrium_events:tracking/spawn/iteration_5_spawned=true}] run function atrium_events:spawn/return_to_world
# If they haven't spawned in yet, do that.
execute positioned ~ ~2 ~ as @p[gamemode=!spectator] if entity @s[advancements={atrium_events:tracking/spawn/iteration_5_spawned=false}] run function atrium_events:spawn/choose_random_element
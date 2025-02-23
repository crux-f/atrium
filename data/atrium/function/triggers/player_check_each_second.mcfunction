# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/player_check_each_second
#
# Boss Bars
execute unless entity @e[type=minecraft:stray,tag=atrium_lich,tag=atrium_alerted] run bossbar set atrium:lich players
#
# Custom advancements
advancement grant @s only atrium:atrium_2025
execute if entity @s[level=100..] run advancement grant @s only atrium:magic/unlightenment
#
# PATREON (Runekeeper)
execute if entity @s[name=shadow_knight6,gamemode=!spectator] if data entity @s {Inventory:[{Slot:102b,components:{"minecraft:custom_data":{atrium_patron:"shadow_knight6"}}}]} at @s run team join atrium_patreon_shadow_knight6_allies @s
execute if entity @s[name=shadow_knight6,gamemode=!spectator] if data entity @s {Inventory:[{Slot:102b,components:{"minecraft:custom_data":{atrium_patron:"shadow_knight6"}}}]} at @s run team join atrium_patreon_shadow_knight6_allies @e[type=minecraft:creaking,distance=..30]
execute if entity @s[name=shadow_knight6,gamemode=!spectator] unless data entity @s {Inventory:[{Slot:102b,components:{"minecraft:custom_data":{atrium_patron:"shadow_knight6"}}}]} at @s run team leave @s
execute unless entity @s[name=shadow_knight6] if data entity @s {Inventory:[{Slot:102b,components:{"minecraft:custom_data":{atrium_patron:"shadow_knight6"}}}]} run damage @s 1 thorns
execute if entity @s[name=konigin12,gamemode=!spectator] if data entity @s {Inventory:[{Slot:103b,components:{"minecraft:custom_data":{atrium_patron:"konigin12"}}}]} at @s if entity @n[type=#atrium_events:fish,distance=..4] run damage @s 1 minecraft:mob_attack by @n[type=#atrium_events:fish]
# ANOMALY: Elemental Soul
# Each player gains an effect based on their elemental attunement; Slow Falling, Haste, Fire Resistance, or Water Breathing.
# effect give @s[advancements={atrium:air_start=true}] slow_falling 10 0 true
# effect give @s[advancements={atrium:earth_start=true}] haste 10 0 true
# effect give @s[advancements={atrium:fire_start=true}] fire_resistance 10 0 true
# effect give @s[advancements={atrium:water_start=true}] water_breathing 10 0 true
#
# ANOMALY: On Your Heels
# Each time a player enters the world for the first time, an hour after they spawn in, someone arrives looking for them.
# (Comment out when anomaly ends)
# execute unless entity @s[advancements={atrium_events:tracking/patreon/on_your_heels=true}] run function atrium:patreon/on_your_heels_check
#
# Run bounty script if the player has a bounty on their head.
# execute if entity @s[tag=atrium_bounty_target] run function atrium:entities/bounty_manager
#
# "On Your Heels" caused more lag than expected; Enable with caution.
#
# ANOMALY: A Truly Spooky Season
# execute at @s as @e[type=#atrium:hostile_mobs,distance=..5] run effect give @s minecraft:glowing 5 0 true
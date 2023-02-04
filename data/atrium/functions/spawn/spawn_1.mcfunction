# If you've never spawned before AND are from the previous server, revoke gameplay achievements from previous server.
execute if entity @s[advancements={atrium:atrium_root=true}] run function atrium:spawn/advancement_revoke
#
# PATREON: Give a random Flotsam item.
execute if entity @s run loot give @s loot atrium:gift_of_flotsam
# If you've made it here, take you into the spawn area.
execute as @s in atrium:between_worlds run tp 36734.5 200 -3213.5

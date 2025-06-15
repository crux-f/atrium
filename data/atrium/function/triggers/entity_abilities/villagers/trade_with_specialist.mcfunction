# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/entity_abilities/villagers/trade_with_specialist
# Level up the specialist (if needed)
execute at @s as @n[tag=atrium_specialist,distance=..5] run function atrium:triggers/entity_abilities/villagers/specialist_level_up
#
# Guild Almanac - Triggers when anyone trades with a specialist villager within 1km of the wielder
execute at @s as @a[distance=..1000,nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_guild_almanac:1b}}}}}] run function atrium:misc/xp_calculators/bonus/extra_xp_from_items
# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/entity_abilities/villagers/trade_with_specialist
# Level up the specialist (if needed)
execute at @s as @e[tag=atrium_specialist,distance=..5] run function atrium:triggers/entity_abilities/villagers/specialist_level_up
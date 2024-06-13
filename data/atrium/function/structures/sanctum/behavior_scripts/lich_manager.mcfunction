# Runs once every tick from atrium:entities/mob_spells/advanced_caster
# 
# If the Lich is targeting a player with its normal mob AI, it is alerted.
# Note: Lich is also alerted when a player damages it in any way via atrium:triggers/entity_abilities/lich/hurt_lich
execute if predicate atrium:entity/is_targeting_survival_player run tag @s add atrium_alerted
#
# If the Lich hasn't been alerted to intruders, run its idle script.
execute unless entity @s[tag=atrium_alerted] run function atrium:structures/sanctum/behavior_scripts/lich_idle_mode
# If the Lich has been alerted but there isn't a player within 15 blocks, it begins searching for intruders.
execute if entity @s[tag=atrium_alerted] unless entity @a[predicate=atrium:player/targetable_and_visible,distance=..25] run function atrium:structures/sanctum/behavior_scripts/lich_search_mode
# If the Lich has been alerted and there is a player within 15 blocks, the Lich enters combat mode.
execute if entity @s[tag=atrium_alerted] if entity @a[predicate=atrium:player/targetable_and_visible,distance=..25] run function atrium:structures/sanctum/behavior_scripts/lich_combat_mode
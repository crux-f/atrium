# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/ender_dragon/suffer_dragons_breath
#
# SHOULD only trigger when the dragon bites someone, not on wing or tail attacks.
#
# For each potion type in your inventory, there is a 30% chance that all potions in your inventory vaporize.
#
# Tag player if they hit 30%
execute if predicate atrium:percentage_chances/0.30_p run tag @s add atrium_vaporizing_potions
execute if predicate atrium:player/inventory/potions/carry_any_fire_resistance_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_fire_resistance
execute if predicate atrium:player/inventory/potions/carry_any_harming_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_harming
execute if predicate atrium:player/inventory/potions/carry_any_healing_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_healing
execute if predicate atrium:player/inventory/potions/carry_any_invisibility_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_invisibility
execute if predicate atrium:player/inventory/potions/carry_any_leaping_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_leaping
execute if predicate atrium:player/inventory/potions/carry_any_luck_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_luck
execute if predicate atrium:player/inventory/potions/carry_any_night_vision_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_night_vision
execute if predicate atrium:player/inventory/potions/carry_any_poison_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_poison
execute if predicate atrium:player/inventory/potions/carry_any_regeneration_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_regeneration
execute if predicate atrium:player/inventory/potions/carry_any_slow_falling_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_slow_falling
execute if predicate atrium:player/inventory/potions/carry_any_slowness_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_slowness
execute if predicate atrium:player/inventory/potions/carry_any_strength_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_strength
execute if predicate atrium:player/inventory/potions/carry_any_swiftness_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_swiftness
execute if predicate atrium:player/inventory/potions/carry_any_turtle_master_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_turtle_master
execute if predicate atrium:player/inventory/potions/carry_any_water_breathing_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_water_breathing
execute if predicate atrium:player/inventory/potions/carry_any_weakness_potion if entity @s[tag=atrium_vaporizing_potions] run function atrium:entities/special_attack/vaporize_potion/vaporize_weakness
#
# Clear potions if one of them vaporized
execute at @s if entity @e[tag=atrium_vaporized_potion,distance=..5] if entity @s[nbt={Inventory:[{id:"minecraft:potion"}]}] run function atrium:entities/special_attack/vaporize_potion/vaporize_all_potions_in_inv
#
# Remove tag
tag @s remove atrium_vaporizing_potions

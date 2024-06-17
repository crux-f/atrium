# Grant attunement
advancement grant @s only atrium:fire_start
#
# If you changed attunements, grant advancement for that
execute if entity @s[tag=changed] run advancement grant @s only atrium:new_year_new_me
#
# If you got the same element twice, grant advancement for that
execute if entity @s[tag=changed,advancements={atrium:fire_memory=true}] run advancement grant @s only atrium:despite_everything
#
# Remove tag
tag @s remove changed
#
# Teleport player to appropriate start, then give them the title, particles, sound, and potion effect.
loot give @s loot atrium:starting_equipment
function atrium_events:spawn/tp_fire_start
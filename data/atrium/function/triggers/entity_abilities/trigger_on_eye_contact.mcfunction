# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/trigger_on_eye_contact
#
# This triggers when the player looks at any entity with the tag [atrium_trigger_on_eye_contact]. Since the advancement checks every tick,
# this manager file exists to minimize per-tick checks.
#
# Averting Eye (Use: Ender Dragon fight)
execute if entity @s[predicate=atrium:player/looking_at/averting_eye] at @s run function atrium:triggers/entity_abilities/ender_dragon/averting_eye_contact
#
# Forgotten Heretic
execute if entity @s[predicate=atrium:player/looking_at/forgotten_heretic] at @s run function atrium:triggers/entity_abilities/looking_at_forgotten_heretic
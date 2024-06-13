# Revoke
advancement revoke @s only atrium:triggers/potions/drink_any_potion
#
# If the player has cast Extend Duration on themself using the Time Staff, run that next tick (potion effect does not kick in until the next tick)
execute if entity @s[tag=atrium_extend_next_potion] run schedule function atrium:triggers/magic/spells/extend_next_potion 1t 
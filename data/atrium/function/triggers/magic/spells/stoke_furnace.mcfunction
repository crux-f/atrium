# Uses the same logic as placeable structure items to find the block
#
# Tag the caster to deliver failure sfx + particles if it doesn't find a target
tag @s add atrium_stoking_furnace
# Finding target block for the spell.
#
execute at @s as @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^0.5 ^1 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^-0.5 ^1 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^1.5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^0.5 ^2 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^-0.5 ^2 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^2.5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^0.5 ^3 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^-0.5 ^3 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^3.5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^0.5 ^4 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^-0.5 ^4 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^4.5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^-0.5 ^5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
execute at @s as @s anchored eyes positioned ^ ^0.5 ^5 if block ~ ~ ~ #atrium:stokable_containers[lit=true] run function atrium:triggers/magic/spells/stoke_furnace_success
#
# If no target was found, deliver the bad news
execute if entity @s[tag=atrium_stoking_furnace] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..10] ~ ~ ~ 0.25 1 0.1
execute if entity @s[tag=atrium_stoking_furnace] run particle minecraft:smoke ~ ~1.25 ~ 0.25 0.25 0.25 0 15 normal
# Remove tag
tag @s remove atrium_stoking_furnace
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
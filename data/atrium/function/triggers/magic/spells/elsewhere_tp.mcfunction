# Run Departure Particles + sound regardless to save me a headache
particle minecraft:flash ~ ~1.25 ~ 0 0 0 0 3
playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~1.25 ~ 1 0.75 0.1
#
# OVERWORLD - - - - - - - - - - - - - - - - -
# If the caster is in The Overworld AND isn't holding a crystal, let them know that this spell didn't do anything.
execute if predicate atrium:in_overworld unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_crystal:1}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_overworld unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_crystal:1}}}}] run tellraw @s {"text":"(You are already in The Overworld. Use crystals to travel to other worlds.)","italic":true,"color":"gray"}
# If the caster IS NOT in The Overworld AND isn't holding a crystal, return them to The Overworld.
execute unless predicate atrium:in_overworld unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_crystal:1}}}}] in minecraft:overworld run tp @s ~ ~ ~
#
# THE NETHER - - - - - - - - - - - - - - - - -
# If the caster is in The Nether AND is holding Rumbling Crystal, let them know that this spell didn't do anything.
execute if predicate atrium:in_the_nether if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_nether if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Nether. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
# If the caster IS NOT in The Nether AND is holding Rumbling Crystal, take them to The Nether.
execute unless predicate atrium:in_the_nether if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] in minecraft:the_nether run tp @s ~ ~ ~
#
# This spell does not currently support The End for balance.
#
# THE DEPTHS - - - - - - - - - - - - - - - - -
# If the caster is in The Depths AND is holding one of The Depths' crystals, let them know that this spell didn't do anything.
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_fading_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Depths. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Depths. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_fading_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Depths. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
execute if predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Depths. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
# If the caster IS NOT in The Depths AND is holding one of The Depths' crystals, take them to The Depths.
execute unless predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] in atrium:the_depths run tp @s ~ ~ ~
execute unless predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_dull_crystal:1b}}}}] in atrium:the_depths run tp @s ~ ~ ~
execute unless predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_fading_crystal:1b}}}}] in atrium:the_depths run tp @s ~ ~ ~
execute unless predicate atrium:in_the_depths if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] in atrium:the_depths run tp @s ~ ~ ~
#
# THE MERIDIAN - - - - - - - - - - - - - - - - -
# If the caster is in The Meridian AND is holding one of The Meridian' crystals,, let them know that this spell didn't do anything.
execute if predicate atrium:in_the_meridian if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_subdued_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_meridian if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_vibrant_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_meridian if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_subdued_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Meridian. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
execute if predicate atrium:in_the_meridian if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_vibrant_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Meridian. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
# If the caster IS NOT in The Meridian AND is holding one of the above crystals, take them to The Meridian.
execute unless predicate atrium:in_the_meridian if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_subdued_crystal:1b}}}}] in atrium:the_meridian run tp @s ~ ~ ~
execute unless predicate atrium:in_the_meridian if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_vibrant_crystal:1b}}}}] in atrium:the_meridian run tp @s ~ ~ ~
#
# THE ABYSS - - - - - - - - - - - - - - - - -
# If the caster is in The Abyss AND is holding Deep Crystal, let them know that this spell didn't do anything.
execute if predicate atrium:in_the_abyss if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_deep_crystal:1b}}}}] run function atrium:triggers/magic/spell_failure_effects
execute if predicate atrium:in_the_abyss if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_deep_crystal:1b}}}}] run tellraw @s {"text":"(You are already in The Nether. Use other crystals to travel to other worlds, or no crystal to return to The Overworld.)","italic":true,"color":"gray"}
# If the caster IS NOT in The Abyss AND is holding Deep Crystal, take them to The Nether.
execute unless predicate atrium:in_the_abyss if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_deep_crystal:1b}}}}] in atrium:the_abyss run tp @s ~ ~ ~
#
#
# Run Arrival Particles + sound regardless to save me a headache
particle minecraft:flash ~ ~1.25 ~ 0 0 0 0 3
playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~1.25 ~ 1 0.75 0.1
#
# Remove tag
tag @s remove atrium_elsewhere_caster
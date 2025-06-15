# Runs as the targeted player
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}}] run scoreboard players set @s charge -60
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}}] run scoreboard players set @s charge -120
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}}] run scoreboard players set @s charge -180
#
# Untag caster to let function know the spell already worked
tag @a[tag=atrium_fizzle_spell_caster] remove atrium_fizzle_spell_caster
# FX
execute at @s run function atrium:triggers/magic/spells/fizzle_spell/fizzle_fx
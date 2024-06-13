# Runs as the targeted player
tag @s remove atrium_extend_next_potion
#
# Untag caster to let function know the spell already worked
tag @a[tag=atrium_fizzle_spell_caster] remove atrium_fizzle_spell_caster
# FX
execute at @s run function atrium:triggers/magic/spells/fizzle_spell/fizzle_fx
# Runs as the targeted entity
kill @s[tag=atrium_meteor_spell]
#
# Untag caster to let function know the spell already worked
tag @a[tag=atrium_fizzle_spell_caster] remove atrium_fizzle_spell_caster
# FX
execute at @s run function atrium:triggers/magic/spells/fizzle_spell/fizzle_fx
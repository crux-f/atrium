# Activated by special_entity_manager when a mob with the atrium_spellcaster tag exists.
#
# Arcane Casters (Use staff rules) - - - - - - - - - -
# 
# (cast any time the entity is alive) - atrium_cast_always
execute if entity @s[tag=atrium_arcane_caster,tag=atrium_cast_always] run function atrium:entities/mob_spells/mob_spell_charge
# (cast only if the caster is targeting a player)
execute if entity @s[tag=atrium_arcane_caster,tag=atrium_cast_on_target] if predicate atrium:entity/is_targeting_player run function atrium:entities/mob_spells/mob_spell_charge
# (Advanced spellcasters)
execute if entity @s[tag=atrium_arcane_caster,tag=atrium_cast_advanced] run function atrium:entities/mob_spells/advanced_caster
#
# Occult Casters (Use Evoker rules)
#
# (Later for Armada Necromancer)
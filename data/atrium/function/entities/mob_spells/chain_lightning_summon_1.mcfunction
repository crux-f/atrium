# LIGHTNING!
execute at @e[tag=atrium_chain_lightning_1_spell_warning] as @a[distance=..2.5] run damage @s 5 atrium:extra_lightning_damage by @e[limit=1,tag=atrium_lich,sort=nearest]
execute at @e[tag=atrium_chain_lightning_1_spell_warning] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[tag=atrium_chain_lightning_1_spell_warning] if predicate atrium:percentage_chances/0.50_p at @p[distance=3..10] run function atrium:entities/mob_spells/chain_lightning_setup_2
kill @e[type=minecraft:marker,tag=atrium_chain_lightning_1_spell_warning]
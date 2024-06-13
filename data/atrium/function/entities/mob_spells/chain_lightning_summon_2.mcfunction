# LIGHTNING!
execute at @e[tag=atrium_chain_lightning_2_spell_warning] as @a[distance=..2.5] run damage @s 7 atrium:extra_lightning_damage by @e[limit=1,tag=atrium_lich,sort=nearest]
execute at @e[tag=atrium_chain_lightning_2_spell_warning] run summon minecraft:lightning_bolt ~ ~ ~
kill @e[type=minecraft:marker,tag=atrium_chain_lightning_2_spell_warning]
# Run by the player hurting the Lich if they are invisible by atrium:triggers/entity_abilities/lich/hurt_lich
effect clear @s invisibility
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..5] ~ ~ ~ 1 1.25 0.1
execute at @s run function atrium:summon/summon_poof
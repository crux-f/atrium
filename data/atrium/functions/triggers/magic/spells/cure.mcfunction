# Cures a Zombie Villager within 5 blocks in 20 seconds.
# Doesn't require Weakness.
#
# If there isn't a Zombie Villager within 5 blocks (ahead of the caster), play failure SFX.
execute positioned ^ ^ ^2 unless entity @e[distance=..5,type=minecraft:zombie_villager] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..15] ~ ~ ~ 0.35 1.5 0.1
#
# If there is a valid target, display particles and play sfx.
execute positioned ~ ~1.5 ~ if entity @e[distance=..5,type=minecraft:zombie_villager] run particle minecraft:scrape ~ ~ ~ 0.5 0.5 0.5 0.25 25
execute positioned ^ ^ ^2 at @e[distance=..5,type=minecraft:zombie_villager,limit=1,sort=nearest] positioned ~ ~1.5 ~ run particle minecraft:glow_squid_ink ~ ~ ~ 0.5 0.5 0.5 0.25 5
#
execute positioned ~ ~1.5 ~ if entity @e[distance=..5,type=minecraft:zombie_villager] run playsound minecraft:entity.allay.item_thrown player @a[distance=..10] ~ ~ ~ 1.5 0.5 0.25
execute positioned ^ ^ ^2 at @e[distance=..5,type=minecraft:zombie_villager,limit=1,sort=nearest] positioned ~ ~1.5 ~ run playsound minecraft:entity.zombie_villager.cure player @a[distance=..10] ~ ~ ~ 0.05 1.25 0.1
# 
# Finally, actually do the thing and cure the villager.
execute positioned ^ ^ ^2 as @e[distance=..5,type=minecraft:zombie_villager,limit=1,sort=nearest] run data merge entity @s {ConversionTime:400}
execute positioned ^ ^ ^2 run data modify entity @e[distance=..5,type=minecraft:zombie_villager,limit=1,sort=nearest] ConversionPlayer set from entity @s UUID
#
# Spell cleanup
function atrium:triggers/magic/spell_cast_complete
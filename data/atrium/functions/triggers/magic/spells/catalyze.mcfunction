# Tag the caster to exclude them as the target
tag @s add atrium_catalyze_caster
#
# Tag the nearest entity that isn't the caster in front of the caster that has at least one active potion effect
execute at @s positioned ^ ^ ^3 run tag @e[distance=..2,tag=!atrium_catalyze_caster,predicate=!atrium:effects/if_no_effects] add atrium_catalyze_target
# If there isn't a valid target, target the caster instead.
execute at @s positioned ^ ^ ^3 unless entity @e[distance=..2,tag=!atrium_catalyze_caster,predicate=!atrium:effects/if_no_effects] run tag @s add atrium_catalyze_target
#
# Particles + Sounds
execute at @s run particle dust_color_transition 1.000 0.000 0.000 1 0.031 0.000 1.000 ^ ^1.5 ^1 0.5 0.5 0.5 0.1 50 normal
execute at @e[tag=atrium_catalyze_target] run particle dust_color_transition 0.031 0.000 1.000 1 1.000 0.000 0.000 ~ ~ ~ 0.5 0.5 0.5 0.1 50 normal
execute at @s run playsound minecraft:block.brewing_stand.brew player @a[distance=..10] ~ ~ ~ 1 1.5 0.1
execute at @s run playsound minecraft:block.portal.trigger player @a[distance=..10] ~ ~ ~ 0.1 2 0.01
# Remove the caster tag 
tag @s remove atrium_catalyze_caster
#
# "Catalyzing" a potion effect gives you a boost of 1 amplification level higher than you had before. 
# The duration of the boost lasts for half as long as the potion / other effect that normally gives it to you 
# or 10 seconds (whichever is higher; with some exceptions) 
#
# Levels have to be reversed so they don't stack up on top of each other.
#
# Absorption IV (Source: Enchanted Golden Apple)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_absorption_4 run effect give @s minecraft:absorption 60 4 false
# Absorption II (Source: Totem of Undying)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_absorption_2 run effect give @s minecraft:absorption 10 2 false
# Absorption I (Source: Golden Apple)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_absorption_1 run effect give @s minecraft:absorption 60 1 false
# 
# Bad Omen V
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_bad_omen_5 run effect give @s minecraft:bad_omen 1000 5 false
# Bad Omen IV
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_bad_omen_4 run effect give @s minecraft:bad_omen 1500 4 false
# Bad Omen III
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_bad_omen_3 run effect give @s minecraft:bad_omen 2000 3 false
# Bad Omen II
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_bad_omen_2 run effect give @s minecraft:bad_omen 2500 2 false
# Bad Omen I
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_bad_omen_1 run effect give @s minecraft:bad_omen 3000 1 false
#
# Dolphin's Grace II (Source: Making friends with Dolphins)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_dolphins_grace_2 run effect give @s minecraft:dolphins_grace 10 2 false
# Dolphin's Grace I
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_dolphins_grace_1 run effect give @s minecraft:dolphins_grace 10 1 false
#
# Haste II (Source: 'Stone Sprite' spell or Beacons)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_haste_2 run effect give @s minecraft:haste 1200 2 false
# Haste I (Source: Geota's Blessing)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_haste_1 run effect give @s minecraft:haste 300 1 false
#
# Excluding Hero of the Village - kind of feels like players should have to catalyze Bad Omen and beat the raid for that instead
#
# Hunger III (Source: Eating a Pufferfish)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_hunger_3 run effect give @s minecraft:hunger 10 3 false
# Hunger II (Source: This)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_hunger_2 run effect give @s minecraft:hunger 15 2 false
# Hunger I (Source: Eating Rotten Flesh, Raw Chicken; Attacked by a Husk)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_hunger_1 run effect give @s minecraft:hunger 15 1 false
#
# Jump Boost III (Source: Empowered Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_jump_boost_3 run effect give @s minecraft:jump_boost 30 2 false
# Jump Boost III (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_jump_boost_2 run effect give @s minecraft:jump_boost 60 2 false
# Jump Boost III (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_jump_boost_1 run effect give @s minecraft:jump_boost 90 2 false
#
# Luck II (Source: Quipster's Blessing; Capping this buff at 150 seconds to prevent absurdity)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_luck_2 run effect give @s minecraft:luck 150 2 false
# Luck I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_luck_1 run effect give @s minecraft:luck 150 1 false
#
# Mining Fatigue III (Source: Elder Guardian Curse; timing this one a little more arbitrarily)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_mining_fatigue_3 run effect give @s minecraft:mining_fatigue 120 3 false
# Mining Fatigue II (Source: This)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_mining_fatigue_2 run effect give @s minecraft:mining_fatigue 90 2 false
# Mining Fatigue I (Source: Brittle Bone Disease)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_mining_fatigue_1 run effect give @s minecraft:mining_fatigue 60 1 false
# 
# Poison III (Source: Empowered Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_poison_3 run effect give @s minecraft:poison 10 3 false
# Poison II (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_poison_2 run effect give @s minecraft:poison 11 2 false
# Poison I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_poison_1 run effect give @s minecraft:poison 45 1 false
#
# Regeneration III (Source: Empowered Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_regeneration_3 run effect give @s minecraft:regeneration 10 3 false
# Regeneration II (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_regeneration_2 run effect give @s minecraft:regeneration 11 2 false
# Regeneration I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_regeneration_1 run effect give @s minecraft:regeneration 22 1 false
#
# Saturation I (Source: Messorum's Blessing)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_saturation_1 run effect give @s minecraft:saturation 300 1 false
#
# Slowness IV (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_slowness_4 run effect give @s minecraft:slowness 10 4 false
# Slowness III (Source: ???)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_slowness_3 run effect give @s minecraft:slowness 12 3 false
# Slowness II (Source: 'Blizzard' spell)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_slowness_2 run effect give @s minecraft:slowness 25 2 false
# Slowness I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_slowness_1 run effect give @s minecraft:slowness 45 1 false
#
#
# Speed III (Source: Empowered Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_speed_3 run effect give @s minecraft:speed 22 3 false
# Speed II (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_speed_2 run effect give @s minecraft:speed 45 2 false
# Speed I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_speed_1 run effect give @s minecraft:speed 90 1 false
#
# Strength III (Source: Empowered Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_strength_3 run effect give @s minecraft:strength 22 3 false
# Strength II (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_strength_2 run effect give @s minecraft:strength 45 2 false
# Strength I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_strength_1 run effect give @s minecraft:strength 90 1 false
#
# Weakness II (Source: This)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_weakness_2 run effect give @s minecraft:weakness 22 2 false
# Weakness I (Source: Potion)
execute as @e[tag=atrium_catalyze_target] if predicate atrium:effects/amplifier/if_weakness_1 run effect give @s minecraft:weakness 45 1 false
#
tag @e[tag=atrium_catalyze_target] remove atrium_catalyze_target
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
# Originally for April 2022.
# Brought back in Blast From the Past, August 2023.
execute as @r[gamemode=!spectator] at @s run summon falling_block ~ ~200 ~ {BlockState: {Name: "minecraft:barrel", Properties: {facing: "up"}}, DropItem: 1b, FallHurtAmount: 3.0f, FallHurtMax: 90, Glowing: 1b, HurtEntities: 1b, Tags: ["atrium_sky_gift"], TileEntityData: {CustomName: '{"text":"Sky Gift","color":"aqua","italic":false}', LootTable: "atrium:patreon/random_sky_gift"}, Time: 1}
execute at @e[tag=atrium_sky_gift] run function atrium:summon/fx/summon_poof
execute at @e[tag=atrium_sky_gift] positioned ~ ~-400 ~ at @p[distance=..5] run particle dust 50 50 50 2 ~ ~1 ~ 1 1 1 0 50 normal
execute at @e[tag=atrium_sky_gift] positioned ~ ~-400 ~ at @p[distance=..5] run playsound minecraft:ui.toast.challenge_complete master @a[distance=..25] ~ ~ ~ 0.5 2 0.01
#
#
# Schedule again
schedule function atrium:patreon/gifts_from_above 3600s

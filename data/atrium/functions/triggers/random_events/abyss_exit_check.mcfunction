# Remove the blocks beneath the hole if it is Bedrock.
execute at @a[tag=atrium_abyss_exiting] positioned ~ 10 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 9 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 8 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 7 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 6 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 5 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 4 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 3 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 2 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 1 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
execute at @a[tag=atrium_abyss_exiting] positioned ~ 0 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:water destroy
#
# Remove tag
tag @a[tag=atrium_abyss_exiting] remove atrium_abyss_exiting
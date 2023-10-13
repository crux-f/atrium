# Remove the blocks beneath the hole if it is Bedrock.
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1055 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1054 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1053 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1052 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1051 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1050 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1049 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1048 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1047 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1046 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1045 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
execute at @a[tag=atrium_depths_burrowing] positioned ~ 1044 ~ if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:air
#
# Remove tag
tag @a[tag=atrium_depths_burrowing] remove atrium_depths_burrowing
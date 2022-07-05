# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/dream
advancement revoke @s only atrium:triggers/dream_clouds
#
# Placeholder here to add more dreams later! currently only used to grant you the Bottle o' Dreams.
#
execute if entity @s[nbt={SelectedItem:{id:"minecraft:experience_bottle"}}] at @s as @s run function atrium:triggers/treasure/get_bottle_o_dreams
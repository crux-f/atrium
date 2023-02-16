# Seamwalkers can teleport to a pocket dimension.
# This activates when any player steps on a seamwalker's door pressure plate
#
# Note: If player is holding a Rod of Relocation, trigger packing up script instead.
execute positioned ~ ~2 ~ unless entity @p[gamemode=!spectator,distance=..3,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}}] run function atrium:patreon/use_seamwalkers_door
#
execute positioned ~ ~2 ~ if entity @p[gamemode=!spectator,distance=..3,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}},level=5..] run function atrium:items/use/placeable_structures/seamwalkers_door/pack_seamwalkers_door
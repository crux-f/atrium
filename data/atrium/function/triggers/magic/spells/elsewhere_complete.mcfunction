# Runs 3 seconds after elsewhere is cast.
#
# Run one instance of elsewhere_tp at each caster.
execute as @a[tag=atrium_elsewhere_caster] at @s run function atrium:triggers/magic/spells/elsewhere_tp
#
# Need to do this so people don't interfere with each other's casts.
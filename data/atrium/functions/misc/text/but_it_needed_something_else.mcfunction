# Used for when a ritual needs some additional non item requirement, and it isnt met.
tellraw @a[distance=..12] {"text":"But it needed something else.","italic":true,"color":"gray"}
playsound minecraft:block.conduit.deactivate player @a[distance=..25] ~ ~ ~ 1 1 0.1

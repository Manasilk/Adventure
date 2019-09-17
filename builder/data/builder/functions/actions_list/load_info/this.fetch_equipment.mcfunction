#Get equipment information from invoker
scoreboard players operation @e[type=#server:area_trigger,tag=VMAP_COMMAND_RAY,sort=nearest,limit=1,distance=0..1.001] CKit.Head = @s CKit.Head
scoreboard players operation @e[type=#server:area_trigger,tag=VMAP_COMMAND_RAY,sort=nearest,limit=1,distance=0..1.001] CKit.Chest = @s CKit.Chest
scoreboard players operation @e[type=#server:area_trigger,tag=VMAP_COMMAND_RAY,sort=nearest,limit=1,distance=0..1.001] CKit.Legs = @s CKit.Legs
scoreboard players operation @e[type=#server:area_trigger,tag=VMAP_COMMAND_RAY,sort=nearest,limit=1,distance=0..1.001] CKit.Feet = @s CKit.Feet
scoreboard players operation @e[type=#server:area_trigger,tag=VMAP_COMMAND_RAY,sort=nearest,limit=1,distance=0..1.001] CKit.Mainhand = @s CKit.Mainhand
scoreboard players operation @e[type=#server:area_trigger,tag=VMAP_COMMAND_RAY,sort=nearest,limit=1,distance=0..1.001] CKit.Offhand = @s CKit.Offhand

#scoreboard players reset @s CKit.Head
#scoreboard players reset @s CKit.Chest
#scoreboard players reset @s CKit.Legs
#scoreboard players reset @s CKit.Feet
#scoreboard players reset @s CKit.Mainhand
#scoreboard players reset @s CKit.Offhand
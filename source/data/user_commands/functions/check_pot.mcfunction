execute positioned ~-1 ~ ~-1 if entity @e[type=minecraft:potion,dx=1,dy=0,dz=1,nbt={Potion:{tag:{Potion:"minecraft:water"}}}] run tag @s add _e.inc_pot
execute if entity @s[tag=_e.inc_pot] positioned ~-1 ~ ~-1 unless entity @e[type=minecraft:potion,dx=1,dy=0,dz=1,nbt={Potion:{tag:{Potion:"minecraft:water"}}}] run say fire_put_out
execute if entity @s[tag=_e.inc_pot] positioned ~-1 ~ ~-1 unless entity @e[type=minecraft:potion,dx=1,dy=0,dz=1,nbt={Potion:{tag:{Potion:"minecraft:water"}}}] run tag @s remove _e.inc_pot

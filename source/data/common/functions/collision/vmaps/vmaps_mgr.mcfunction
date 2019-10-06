execute as @e[type=#server:creature,tag=los_target] run function common:collision/vmaps/this.update_entity
execute as @a[tag=los_target] run function common:collision/vmaps/this.update_entity

execute as @e[type=#server:creature,tag=_e.find_los_target] at @s run function common:collision/vmaps/build_los_ray
execute as @a[tag=_e.find_los_target] at @s run function common:collision/vmaps/build_los_ray

execute as @e[type=#server:area_trigger,tag=vmap_los_chk] at @s anchored feet positioned ^ ^ ^ run function common:collision/vmaps/this.move_forward
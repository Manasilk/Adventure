execute store success score @s[tag=TARGET_PLAYER_MELEE] has_target if entity @a[tag=collision.line_of_sight_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..1.199,sort=nearest,limit=1]
execute store success score @s[tag=TARGET_PLAYER_NEAREST] has_target if entity @a[tag=collision.line_of_sight_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=nearest,limit=1]
execute store success score @s[tag=TARGET_PLAYER_FURTHEST] has_target if entity @a[tag=collision.line_of_sight_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=furthest,limit=1]
execute store success score @s[tag=TARGET_PLAYER_RANDOM] has_target if entity @a[tag=collision.line_of_sight_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

execute store success score @s[tag=TARGET_CREATURE_NEAREST] has_target if entity @e[type=#internal:creature,tag=collision.line_of_sight_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=nearest,limit=1]
execute store success score @s[tag=TARGET_CREATURE_FURTHEST] has_target if entity @e[type=#internal:creature,tag=collision.line_of_sight_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=furthest,limit=1]
execute store success score @s[tag=TARGET_POSITION] has_target if entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

execute if score @s[tag=SMARTCAST_DYNAMIC_TARGET] has_target matches 0 run function internal:world/entity/scripted_behavior/action/switch_target
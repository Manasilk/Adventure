execute store success score @s[tag=TARGET_PLAYER_NEAREST] has_target if entity @a[tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=nearest,limit=1]
execute store success score @s[tag=TARGET_PLAYER_FURTHEST] has_target if entity @a[tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=furthest,limit=1]
execute store success score @s[tag=TARGET_PLAYER_RANDOM] has_target if entity @a[tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

execute store success score @s[tag=TARGET_CREATURE_NEAREST] has_target if entity @e[type=#server:creature,tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=nearest,limit=1]
execute store success score @s[tag=TARGET_CREATURE_FURTHEST] has_target if entity @e[type=#server:creature,tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=furthest,limit=1]
execute store success score @s[tag=TARGET_POSITION] has_target if entity @e[type=#server:area_trigger,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

execute if score @s[tag=SMARTCAST_DYNAMIC_TARGET] has_target = #bool false run function server:game/ai/core_ai/combat_ai/switch_target
execute unless entity @s[tag=ENTITY_FLAG_NO_AI] run function server:game/ai/core_ai/combat_ai/disable_ai
scoreboard players operation @s[tag=SMARTCAST_TRIGGERED] spell_cast_t = @s cast_t_max
teleport @s ~ ~ ~ facing entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

function server:game/time/update_cast
execute if score @s entity_upd_t matches 0 run function server:game/particles/particle_mgr
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/stopcast

tag @s[tag=_e.call_spell_script,tag=TARGET_NONE] remove TARGET_NONE
tag @s[tag=_e.call_spell_script,tag=TARGET_SELF] remove TARGET_SELF
tag @s[tag=_e.call_spell_script,tag=TARGET_POSITION] remove TARGET_POSITION
tag @s[tag=_e.call_spell_script,tag=TARGET_PLAYER_NEAREST] remove TARGET_PLAYER_NEAREST
tag @s[tag=_e.call_spell_script,tag=TARGET_PLAYER_FURTHEST] remove TARGET_PLAYER_FURTHEST
tag @s[tag=_e.call_spell_script,tag=TARGET_PLAYER_RANDOM] remove TARGET_PLAYER_RANDOM
tag @s[tag=_e.call_spell_script,tag=TARGET_CREATURE_NEAREST] remove TARGET_CREATURE_NEAREST
tag @s[tag=_e.call_spell_script,tag=TARGET_CREATURE_FURTHEST] remove TARGET_CREATURE_FURTHEST
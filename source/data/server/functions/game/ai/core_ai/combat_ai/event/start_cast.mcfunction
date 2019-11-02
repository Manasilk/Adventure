execute unless entity @s[tag=ENTITY_FLAG_NO_AI] run function server:game/ai/core_ai/combat_ai/disable_ai
scoreboard players operation @s[tag=SMARTCAST_TRIGGERED] cast_timer = @s cast_timer_max
teleport @s ~ ~ ~ facing entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

function server:game/time/update_cast
execute if score @s entity_upd_t matches 10 run function server:game/particles/particle_mgr
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/event/stopcast
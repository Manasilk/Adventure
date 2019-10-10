tag @s[tag=!SMART_ACTION_FLEE,scores={entity_hpprc=0..20}] add SMART_ACTION_FLEE

scoreboard players add @s[tag=SMART_ACTION_FLEE] entity_upd_t 1
#else invoked @server:game/ai/core_ai/aggressor_ai/flee
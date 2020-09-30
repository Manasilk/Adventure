function internal:world/general/time/update_respawn

execute unless entity @s[tag=script.event.outpost_siege] if entity @a[tag=!SPELL_AURA_INVISIBILITY,distance=0..41.999] run function internal:scripts/world/event_outpost_siege
execute if entity @s[tag=script.event.outpost_siege] unless entity @a[tag=!SPELL_AURA_INVISIBILITY,distance=0..41.999] run tag @s remove script.event.outpost_siege

execute if score @s entity_tick = #world cfg.normal_t run function internal:world/entity/area_trigger/get_entity_count
execute if score @s[scores={entity_count=0..10}] entity_tick = #world cfg.normal_t run function internal:world/entity/area_trigger/summon_outpost_spawn
function server:game/time/update_respawn

execute if score @s entity_upd_t = #dbc.server cfg.normal_t run function server:game/entity/area_trigger/this.get_entity_count
execute if score @s[scores={entity_count=0..10}] entity_upd_t = #dbc.server cfg.normal_t run function server:game/entity/area_trigger/this.spawn_pillager_pack

execute unless entity @s[tag=_e.outpost_siege] if entity @a[tag=!SPELL_AURA_INVISIBILITY,distance=0..28.0] run function server:scripts/world/event_outpost_siege
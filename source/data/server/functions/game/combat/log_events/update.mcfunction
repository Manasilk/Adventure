execute if score @s entity_curhp > @s entity_temphp run function server:game/combat/unit_events/get_health_restored
execute unless score @s exp_gained = @s exp_stored run function server:game/combat/unit_events/get_experience_gained
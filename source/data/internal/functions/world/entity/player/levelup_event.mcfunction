tag @s add messages.info.levelup
scoreboard players operation @s entity_reclvl = @s entity_level
scoreboard players operation @s entity_nxtlvl = @s entity_level

#Send a message, playsound and display "happy" particles only to the invoker
execute at @s run function internal:world/entity/player/sound_events/levelup
execute at @s run function internal:world/particles/generator/event_particle_levelup
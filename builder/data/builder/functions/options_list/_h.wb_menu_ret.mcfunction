execute at @s run kill @e[type=minecraft:item,nbt={Item:{tag:{_H.BuilderRMB:1b}}},sort=nearest,limit=1,distance=0..1.999]
replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{_H.BuilderRMB:1b,CustomModelData:1,display:{Name:'{"italic":false,"translate":"builder.assist_tool"}'}}

tag @s[tag=_h.wb_update_npc] remove _h.wb_update_npc
tag @s[tag=_h.wb_spawn_npc] remove _h.wb_spawn_npc
tag @s[tag=_h.wb_spawn_gob] remove _h.wb_spawn_gob
tag @s[tag=_h.wb_despawn_npc] remove _h.wb_despawn_npc
tag @s[tag=_h.wb_despawn_gob] remove _h.wb_despawn_gob
tag @s[tag=_h.wb_show_info] remove _h.wb_show_info
tag @s[tag=_e.find_los_target] remove _e.find_los_target
scoreboard objectives add wb_class_id dummy {"translate":"dbc.builder.class_id"}
scoreboard objectives add SHOW_INFO dummy

#CREATURE, OBJECT, INFO
scoreboard objectives add wb_class_type dummy {"translate":"dbc.builder.class_type"}
#EDIT, SUMMON, DESPAWN
scoreboard objectives add wb_option_id dummy {"translate":"dbc.builder.option_id"}

scoreboard objectives add wb_page_cur dummy {"translate":"dbc.builder.page_cur"}
scoreboard objectives add wb_page_last dummy {"translate":"dbc.builder.page_last"}
scoreboard objectives add wb_npc_type dummy {"translate":"dbc.builder.npc_type"}
scoreboard objectives add wb_gob_type dummy {"translate":"dbc.builder.gob_type"}
scoreboard objectives add wb_npc_id dummy {"translate":"dbc.builder.npc_id"}
scoreboard objectives add wb_gob_id dummy {"translate":"dbc.builder.gob_id"}
scoreboard objectives add wb_biome_id dummy {"translate":"dbc.builder.biome_id"}
scoreboard objectives add wb_struct_itr dummy
scoreboard objectives add BIOME_FOREST dummy {"text":"wb_biome_id = 1"}
scoreboard objectives add BIOME_JUNGLE dummy {"text":"wb_biome_id = 2"}
scoreboard objectives add BIOME_DESERT dummy {"text":"wb_biome_id = 3"}
scoreboard objectives add BIOME_MESA dummy {"text":"wb_biome_id = 4"}
scoreboard objectives add BIOME_OCEAN dummy {"text":"wb_biome_id = 5"}
scoreboard objectives add BIOME_TAIGA dummy {"text":"wb_biome_id = 6"}
scoreboard objectives add BIOME_TUNDRA dummy {"text":"wb_biome_id = 7"}
scoreboard objectives add BIOME_STONE dummy {"text":"wb_biome_id = 8"}

scoreboard objectives add wb_pos.x dummy {"translate":"dbc.builder.pos_x"}
scoreboard objectives add wb_pos.y dummy {"translate":"dbc.builder.pos_y"}
scoreboard objectives add wb_pos.z dummy {"translate":"dbc.builder.pos_z"}
scoreboard objectives add wb_rot.y dummy {"translate":"dbc.builder.rot_x"}
scoreboard objectives add wb_rot.x dummy {"translate":"dbc.builder.rot_y"}

scoreboard objectives add _h.wb_menu_ret minecraft.dropped:minecraft.carrot_on_a_stick {"translate":"dbc.handler.builder.menu_ret"}
scoreboard objectives add _h.wb_rmb minecraft.used:minecraft.carrot_on_a_stick {"translate":"dbc.handler.builder.rmb"}
scoreboard objectives add _h.wb_page_scrl dummy {"translate":"dbc.handler.builder.page_scrl"}
scoreboard objectives add entity_id dummy {"translate":"dbc.entity.entity_id"}
scoreboard objectives add entity_guid dummy {"translate":"dbc.entity.entity_guid"}
#GUID is assigned to entities spawned through the creative kit
scoreboard objectives add entity_lootid dummy {"translate":"dbc.entity.entity_lootid"}
#EntityLootId = EntityId
#Custom loot ID: 200+
#Entity IDs:
#VILLAGER                        = 11,
#DROWNED                         = 12,
#EVOKER                          = 13,
#HUSK                            = 14,
#PHANTOM                         = 15,
#SHULEKR                         = 16,
#SILVERFISH                      = 17,
#SKELETON                        = 18,
#SKELETON_HORSE                  = 19,
#STRAY                           = 20,
#VEX                             = 21,
#VINDICATOR                      = 22,
#WITCH                           = 23,
#WITHER_SKELETON                 = 24,
#ZOMBIE                          = 25,
#ZOMBIE_VILLAGER                 = 26,
#ZOMBIE_PIGMAN                   = 27,
#SPIDER                          = 28,
#PILLAGER                        = 29,
#RAVAGER                         = 30,
#DOLPHIN                         = 31,
#POLAR_BEAR                      = 32,
#WOLF                            = 33,
#LLAMA                           = 34,
#PUFFERFISH                      = 35,
#BAT                             = 36,
#CHICKEN                         = 37,
#COD                             = 38,
#COW                             = 39,
#DONKEY                          = 40,
#HORSE                           = 41,
#MULE                            = 42,
#OCELOT                          = 43,
#PARROT                          = 44,
#PIG                             = 45,
#RABBIT                          = 46,
#SHEEP                           = 47,
#SALMON                          = 48,
#SQUID                           = 49,
#TURTLE                          = 50,
#TROPICAL_FISH                   = 51,
#IRON_GOLEM                      = 52,
#SNOW_GOLEM                      = 53,
#PANDA                           = 54,
#CAT                             = 55,
#GHAST                           = 56,
#ILLUSIONER                      = 57,
#ENDERMITE         	             = 58,
#BLAZE               	         = 59,
#GUARDIAN                        = 60,
#ZOMBIE_HORSE                    = 61,
#ELDER_GUARDIAN                  = 62,
#WITHER                          = 63,
#ENDER_DRAGON                    = 64,
#ENDERMAN                        = 65,
#SHULKER                         = 66,
#SLIME                           = 67,
#WANDERING_TRADER                = 68,
#TRADER_LLAMA                    = 69,
#CREEPER                         = 70,
#MAGMA_CUBE                      = 71,
#FOX                             = 72,
#MOOSHROOM                       = 73,
#CAVE_SPIDER                     = 74
scoreboard objectives add entity_hostility dummy {"translate":"dbc.entity.entity_hostility"}
#ENTITY_ACTION_IGNORE            = 0,
#ENTITY_ACTION_FRIENDLY          = 1,
#ENTITY_ACTION_NEUTRAL           = 2,
#ENTITY_ACTION_HOSTILE           = 3
scoreboard objectives add ENTITY_FRIENDLY dummy {"text":"entity_hostility = 1"}
scoreboard objectives add ENTITY_NEUTRAL dummy {"text":"entity_hostility = 2"}
scoreboard objectives add ENTITY_HOSTILE dummy {"text":"entity_hostility = 3"}
scoreboard objectives add entity_flags dummy {"translate":"dbc.entity.entity_flags"}
#ENTITY_FLAG_WORLD_IGNORE        = 0 //Entity is ignored by selectors
#ENTITY_FLAG_IN_COMBAT 		     = 1,
#ENTITY_FLAG_SHOW_INFO           = 2, //Entity shows health percentage as name
#ENTITY_FLAG_QUEST_TRIGGER       = 4
scoreboard objectives add entity_avglvl dummy {"translate":"dbc.entity.entity_avglvl"}
scoreboard objectives add entity_level dummy {"translate":"dbc.entity.entity_level"}
scoreboard objectives add entity_hpprc dummy {"translate":"dbc.entity.entity_hpprc"}
scoreboard objectives add entity_basehp dummy {"translate":"dbc.entity.entity_basehp"}
scoreboard objectives add entity_baseap dummy {"translate":"dbc.entity.entity_baseap"}
scoreboard objectives add entity_curhp dummy {"translate":"dbc.entity.entity_curhp"}
scoreboard objectives add entity_temphp dummy {"translate":"dbc.entity.entity_temphp"}

scoreboard objectives add entity_spawn.x dummy {"translate":"dbc.entity.entity_spawn_x"}
scoreboard objectives add entity_spawn.y dummy {"translate":"dbc.entity.entity_spawn_y"}
scoreboard objectives add entity_spawn.z dummy {"translate":"dbc.entity.entity_spawn_z"}

scoreboard objectives add entity_pos.x dummy {"translate":"dbc.entity.entity_pos_x"}
scoreboard objectives add entity_pos.y dummy {"translate":"dbc.entity.entity_pos_y"}
scoreboard objectives add entity_pos.z dummy {"translate":"dbc.entity.entity_pos_z"}
scoreboard objectives add entity_rot.x dummy {"translate":"dbc.entity.entity_rot_x"}
scoreboard objectives add entity_rot.y dummy {"translate":"dbc.entity.entity_rot_y"}
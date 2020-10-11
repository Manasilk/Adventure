scoreboard objectives add entity_id dummy {"translate":"dbc.entity.entity_id"}
scoreboard objectives add owner_id dummy {"translate":"dbc.entity.owner_id"}
scoreboard objectives add entity_guid dummy {"translate":"dbc.entity.entity_guid"}
#GUID is assigned to entities spawned through the World Builder:
# entity_guid < 0 is for generic creatures only
#Custom loot templates IDs should match custom entity_id
#IDs:
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
#CAVE_SPIDER                     = 74,
#PIGLIN                          = 75,
#PIGLIN_BRUTE                    = 76,
#HOGLIN                          = 77,
#ZOGLIN                          = 78,
#STRIDER                         = 79
scoreboard objectives add entity_hostility dummy {"translate":"dbc.entity.entity_hostility"}
#ENTITY_ACTION_IGNORE            = 0,
#ENTITY_ACTION_FRIENDLY          = 1,
#ENTITY_ACTION_NEUTRAL           = 2,
#ENTITY_ACTION_HOSTILE           = 3
scoreboard objectives add entity_rank dummy {"translate":"dbc.entity.entity_rank"}
#ENTITY_RANK_NONE                = 0,
#ENTITY_RANK_NORMAL              = 1,
#ENTITY_RANK_ELITE               = 2,
#ENTITY_RANK_BOSS                = 3
scoreboard objectives add ENTITY_FRIENDLY dummy {"text":"entity_hostility = 1"}
scoreboard objectives add ENTITY_NEUTRAL dummy {"text":"entity_hostility = 2"}
scoreboard objectives add ENTITY_HOSTILE dummy {"text":"entity_hostility = 3"}
#entity_flag
#ENTITY_FLAG_SERVER_CONTROLLED      = 1,
#ENTITY_FLAG_NON_ATTACKABLE         = 2,
#ENTITY_FLAG_PACIFIED               = 4,
#ENTITY_FLAG_IN_COMBAT              = 8,
#ENTITY_FLAG_TAXI_TELEPORT          = 16,
#ENTITY_FLAG_DISARMED               = 32,
#ENTITY_FLAG_CONFUSED               = 64,
#ENTITY_FLAG_FORCE_MOVEMENT         = 128,
#ENTITY_FLAG_SPECIALINFO            = 256,
#ENTITY_FLAG_NO_AI                  = 512,
#ENTITY_FLAG_SPELL_TARGET           = 1024,
#ENTITY_FLAG_UNPICKABLE             = 2048,
#ENTITY_FLAG_GOSSIP                 = 4096,
#ENTITY_FLAG_QUESTGIVER             = 8192,
#ENTITY_FLAG_ITEM_UNPICKABLE        = 16384,
#ENTITY_FLAG_QUEST_RELATION         = 32768,
#ENTITY_FLAG_GHOST                  = 65536,
#ENTITY_FLAG_SILENT                 = 131072,
#ENTITY_FLAG_NO_DESPAWN             = 262144,
#ENTITY_FLAG_NO_PICKUP_ITEM         = 524288,
#ENTITY_FLAG_OBJECT_ACTOR           = 1048576,
#ENTITY_FLAG_QUEST_TRIGGER          = 2097152

#entity_flag1
#ENTITY_FLAG_EXTRA_OBJECT_BIND      = 1
#ENTITY_FLAG_EXTRA_INSTANCE_BIND    = 2,
#ENTITY_FLAG_EXTRA_TRIGGER          = 4,
#ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK = 8

#entity_flag2
#ENTITY_IMMUNE_DISARM               = 1,
#ENTITY_IMMUNE_INFECTED             = 2,
#ENTITY_IMMUNE_DISTRACT             = 4,
#ENTITY_IMMUNE_SILENCE              = 8,
#ENTITY_IMMUNE_PACIFY               = 16
scoreboard objectives add entity_level dummy {"translate":"dbc.entity.entity_level"}
scoreboard objectives add entity_hpprc dummy {"translate":"dbc.entity.entity_hpprc"}
scoreboard objectives add entity_basehp dummy {"translate":"dbc.entity.entity_basehp"}
scoreboard objectives add entity_baseap dummy {"translate":"dbc.entity.entity_baseap"}
scoreboard objectives add entity_curap dummy {"translate":"dbc.entity.entity_curap"}
scoreboard objectives add entity_curhp dummy {"translate":"dbc.entity.entity_curhp"}
scoreboard objectives add entity_maxhp dummy {"translate":"dbc.entity.entity_maxhp"}
scoreboard objectives add entity_temphp dummy {"translate":"dbc.entity.entity_temphp"}
scoreboard objectives add entity_armor dummy {"translate":"dbc.entity.entity_armor"}
scoreboard objectives add entity_phaseid dummy {"translate":"dbc.entity.entity_phaseid"}
scoreboard objectives add entity_gossip_id dummy {"translate":"dbc.entity.entity_gossip_id"}
scoreboard objectives add has_target dummy

scoreboard objectives add entity_count dummy {"translate":"dbc.entity.entity_count"}

scoreboard objectives add entity.spawn_x dummy {"translate":"dbc.entity.entity_spawn_x"}
scoreboard objectives add entity.spawn_y dummy {"translate":"dbc.entity.entity_spawn_y"}
scoreboard objectives add entity.spawn_z dummy {"translate":"dbc.entity.entity_spawn_z"}

scoreboard objectives add entity.pos_x dummy {"translate":"dbc.entity.entity_pos_x"}
scoreboard objectives add entity.pos_y dummy {"translate":"dbc.entity.entity_pos_y"}
scoreboard objectives add entity.pos_z dummy {"translate":"dbc.entity.entity_pos_z"}
scoreboard objectives add entity.rot_x dummy {"translate":"dbc.entity.entity_rot_x"}
scoreboard objectives add entity.rot_y dummy {"translate":"dbc.entity.entity_rot_y"}

#Used only by spawner area triggers
#spawn_range.N defines the range on the N axis within which mobs can be spawned
# from the area trigger position:
# min = position - spawn_range
# max = position + spawn_range
scoreboard objectives add spawn_range.x dummy {"translate":"dbc.entity.spawn_range_x"}
scoreboard objectives add spawn_range.y dummy {"translate":"dbc.entity.spawn_range_y"}
scoreboard objectives add spawn_range.z dummy {"translate":"dbc.entity.spawn_range_z"}

scoreboard objectives add override_min.x dummy {"translate":"dbc.entity.override_x"}
scoreboard objectives add override_min.y dummy {"translate":"dbc.entity.override_y"}
scoreboard objectives add override_min.z dummy {"translate":"dbc.entity.override_z"}
scoreboard objectives add override_max.x dummy {"translate":"dbc.entity.override_x"}
scoreboard objectives add override_max.y dummy {"translate":"dbc.entity.override_y"}
scoreboard objectives add override_max.z dummy {"translate":"dbc.entity.override_z"}

scoreboard objectives add exp_stored xp {"translate":"dbc.entity.exp_stored"}
scoreboard objectives add exp_gained dummy {"translate":"dbc.entity.exp_gained"}
#SMART EVENTS
#casts
#SMARTCAST_INTERRUPT
#SMARTCAST_TRIGGERED
#targets
#TARGET_NONE
#TARGET_SELF
#TARGET_POSITION
#TARGET_PLAYER_NEAREST
#TARGET_PLAYER_FURTHEST
#TARGET_PLAYER_RANDOM
#TARGET_CREATURE_NEAREST
#TARGET_CREATURE_FURTHEST
#events
#SMART_EVENT_CAST
#SMART_EVENT_RESET
#SMART_EVENT_LOAD_SPELL
#SMART_EVENT_PREP_CAST
function server:updates/package/VUH_DD-MM-YYYY/update_dbc
function server:updates/package/VUH_DD-MM-YYYY/create_structures
execute as @a[limit=1] if score #dbc.server world_version matches 0 run function server:worldserver/update_dataversion

tellraw @a[tag=rbac.debugging] {"translate":"server_broadcast","with":[{"translate":"server.install_pkg_msg","with":[{"text":"13-09-2019_001"}]}],"color":"yellow"}
tellraw @a[tag=rbac.debugging] {"translate":"server.build_info","with":[{"score":{"name":"#dbc.core","objective":"build_revision"}},{"score":{"name":"#dbc.core","objective":"build_pd_d"}},{"score":{"name":"#dbc.core","objective":"build_pd_m"}},{"score":{"name":"#dbc.core","objective":"build_pd_y"}},{"score":{"name":"#dbc.server","objective":"world_version"},"color":"green"}],"color":"yellow"}
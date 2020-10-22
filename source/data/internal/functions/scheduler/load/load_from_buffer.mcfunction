
data modify storage internal:world build.id set from storage internal:buffer build.id
data modify storage internal:world build.rv set from storage internal:buffer build.rv
data modify storage internal:world build.date set from storage internal:buffer build.date

data modify storage internal:world build.packages append from storage internal:buffer build.packages
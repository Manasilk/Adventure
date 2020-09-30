tag @s remove entity.call_spell_script
tag @s remove spell_script_poison_fang

tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..1.199,sort=nearest,limit=1] add SPELL_EFFECT_POISON_FANG
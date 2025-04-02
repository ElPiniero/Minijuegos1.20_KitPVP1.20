execute unless items entity @s armor.chest elytra run return run tag @s add yavole

tag @r[tag=!sesion_no_iniciada,gamemode=!spectator] add target-volar
data merge entity @s {FallFlying:1b}
execute if block ~ ~-1 ~ air run data merge entity @s {OnGround:0b}
execute anchored eyes rotated ~ 0 run rotate @s facing entity @p[tag=target-volar] feet

summon marker ~ ~ ~ {Tags:["rotacion"]}
rotate @n[type=marker,tag=rotacion] facing entity @p[tag=target-volar]
execute store result score #rotacion Conteo run data get entity @n[type=marker,tag=rotacion] Rotation.[1]
execute if score #rotacion Conteo matches ..-20 run data modify entity @s Motion.[1] set value 1d
kill @n[type=marker,tag=rotacion]

execute if entity @s[nbt={OnGround:1b},tag=!jefes] run item replace entity @s armor.chest with air
execute if entity @s[nbt={OnGround:1b},tag=jefes] run item replace entity @s armor.chest with netherite_chestplate[enchantments={vanishing_curse:1,protection:4,thorns:4}]
execute anchored feet facing entity @p[tag=target-volar,distance=..20] eyes positioned ^ ^ ^1 rotated as @s rotated ~ 90 positioned ^ ^ ^-1 if entity @s[distance=...25] run item replace entity @s[tag=!jefes] armor.chest with air
execute anchored feet facing entity @p[tag=target-volar,distance=..20] eyes positioned ^ ^ ^1 rotated as @s rotated ~ 90 positioned ^ ^ ^-1 if entity @s[distance=...25] run item replace entity @s[tag=jefes] armor.chest with netherite_chestplate[enchantments={vanishing_curse:1,protection:4,thorns:4}]
tag @a remove target-volar
tag @s add yavole
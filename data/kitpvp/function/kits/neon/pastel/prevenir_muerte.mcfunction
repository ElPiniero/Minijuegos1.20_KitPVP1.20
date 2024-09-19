scoreboard players operation #pastelon INESoldado = @s INESoldado
tag @s add muerte
execute at @s as @a[tag=!sesion_no_iniciada,tag=Neon,nbt={SelectedItem:{id:"minecraft:bow"}},nbt={Inventory:[{Slot:-106b,id:"minecraft:cake"}]}] if score @s INESoldado = #pastelon INESoldado run tag @e[type=block_display,tag=Pastel,tag=sin_disparar,sort=nearest,limit=1] remove muerte
kill @s[tag=muerte] 
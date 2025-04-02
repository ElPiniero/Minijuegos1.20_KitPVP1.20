execute if predicate kitpvp:25 run tag @s[tag=!Cumplido] add compra_masa
execute as @s[tag=compra_masa] run tag @s add Cumplido
execute as @s[tag=compra_masa] run tellraw @a[tag=!sesion_no_iniciada] [{"text": "- El Iluminado: ","color": "yellow","bold": true},{"text": "Recuerda que puedes comprar articulos en masa al efectuar el comando: ","color": "gold","bold": false},{"text": "'/[articulo] [cantidad]'","color": "light_purple","bold": true},{"text": ", por ejemplo: si quisieras 32 manzanas rapido efectúas:","color": "gold","bold": false},{"text": " '/manzana-encantada 32'","color": "light_purple","bold": true}]
execute as @s[tag=compra_masa] run tag @s remove compra_masa

execute if predicate kitpvp:25 run tag @s[tag=!Cumplido] add eliminar_horda
execute as @s[tag=eliminar_horda] run tag @s add Cumplido
execute as @s[tag=eliminar_horda] run tellraw @a[tag=!sesion_no_iniciada] [{"text": "- El Iluminado: ","color": "yellow","bold": true},{"text": "No te puedes esconder. Si no eliminas zombis, la horda nunca acabara","color": "gold","bold": false}]
execute as @s[tag=eliminar_horda] run tag @s remove eliminar_horda

execute if predicate kitpvp:25 run tag @s[tag=!Cumplido] add inversion
execute as @s[tag=inversion] run tag @s add Cumplido
execute as @s[tag=inversion] run tellraw @a[tag=!sesion_no_iniciada] [{"text": "- El Iluminado: ","color": "yellow","bold": true},{"text": "Se trata de invertir tus diamantes en la carta y conseguir aun mas","color": "gold","bold": false}]
execute as @s[tag=inversion] run tag @s remove inversion

execute if predicate kitpvp:25 run tag @s[tag=!Cumplido] add sobrantes
execute as @s[tag=sobrantes] run tag @s add Cumplido
execute as @s[tag=sobrantes] run tellraw @a[tag=!sesion_no_iniciada] [{"text": "- El Iluminado: ","color": "yellow","bold": true},{"text": "No mantengas diamantes sobrantes en tu inventario, canjealos todos, en especial antes del inicio del final","color": "gold","bold": false}]
execute as @s[tag=sobrantes] run tag @s remove sobrantes

execute as @s[tag=!Cumplido] run function kitpvp:solitario/el_mejor_consejo
tag @s remove Cumplido
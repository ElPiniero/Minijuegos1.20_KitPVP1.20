effect clear @s[tag=!supervivencia-z]
clear @s
function kitpvp:kits/remover_tag
advancement grant @s only kitpvp:kitpvp/primer_kit
tag @s add sin_iniciar
tag @s add Zorro
effect give @s strength infinite 0 true
effect give @s speed infinite 1 true
item replace entity @s armor.head with player_head[enchantments={binding_curse:1,protection:4},custom_name='[{"text":"Cabeza de Zorro","italic":false,"color":"dark_green"}]',attribute_modifiers=[{type:"generic.armor",slot:"head",operation:add_value,id:"armor",amount:3}],profile={id:[I;1671035703,-250330693,-1369778158,-2078722794],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODlhM2E5ZTk0NmIxZGNmODUyNzEwY2VmNjM2MzVjYTJjYjA2ZWI4YTVhYWRkMWJlYjZmOTkwNTQ3NDk2MTc4OCJ9fX0="}]}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,protection:5},dyed_color=16735744,trim={material:"minecraft:quartz",pattern:"minecraft:vex"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantments={binding_curse:1,protection:5},dyed_color=16777215,trim={material:"minecraft:copper",pattern:"minecraft:wayfinder"}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={binding_curse:1,protection:4},dyed_color=16735744,trim={material:"minecraft:copper",pattern:"minecraft:silence"}]
item replace entity @s[tag=!supervivencia-z] hotbar.0 with stone_sword[unbreakable={},enchantments={sharpness:3}]
item replace entity @s[tag=supervivencia-z] hotbar.0 with stone_sword[unbreakable={},enchantments={sharpness:20,sweeping_edge:3}]
item replace entity @s hotbar.1 with sweet_berries 20
item replace entity @s hotbar.2 with egg[custom_name='[{"text":"L","color":"#ff003e","italic": false},{"text":"a","color":"#fb003a"},{"text":"n","color":"#f80037"},{"text":"z","color":"#f40034"},{"text":"a","color":"#f10030"},{"text":"d","color":"#ed002d"},{"text":"o","color":"#ea002a"},{"text":"r ","color":"#e70027"},{"text":"d","color":"#e30023"},{"text":"e ","color":"#e00020"},{"text":"b","color":"#dc001d"},{"text":"a","color":"#d9001a"},{"text":"y","color":"#d50016"},{"text":"a ","color":"#d20013"},{"text":"p","color":"#cf0010"},{"text":"i","color":"#cb000d"},{"text":"c","color":"#c80009"},{"text":"o","color":"#c40006"},{"text":"s","color":"#c10003"},{"text":"a","color":"dark_red"}]'] 16
item replace entity @s hotbar.3 with potion[custom_name='[{"text":"Ataque ","color":"#ff6300","italic": false},{"text":"de ","color":"white"},{"text":"Zorro","color":"#ff7b00"}]',potion_contents={custom_color:16711765,custom_effects:[{id:"minecraft:jump_boost",duration:900,amplifier:4,show_particles:1b}]}]
item replace entity @s hotbar.4 with potion[custom_name='[{"text":"Ataque ","color":"#ff6300","italic": false},{"text":"de ","color":"white"},{"text":"Zorro","color":"#ff7b00"}]',potion_contents={custom_color:16711765,custom_effects:[{id:"minecraft:jump_boost",duration:900,amplifier:4,show_particles:1b}]}]
item replace entity @s hotbar.5 with potion[custom_name='[{"text":"Ataque ","color":"#ff6300","italic": false},{"text":"de ","color":"white"},{"text":"Zorro","color":"#ff7b00"}]',potion_contents={custom_color:16711765,custom_effects:[{id:"minecraft:jump_boost",duration:900,amplifier:4,show_particles:1b}]}]
item replace entity @s hotbar.6 with potion[custom_name='[{"text":"Ataque ","color":"#ff6300","italic": false},{"text":"de ","color":"white"},{"text":"Zorro","color":"#ff7b00"}]',potion_contents={custom_color:16711765,custom_effects:[{id:"minecraft:jump_boost",duration:900,amplifier:4,show_particles:1b}]}]
item replace entity @s hotbar.7 with potion[custom_name='[{"text":"Ataque ","color":"#ff6300","italic": false},{"text":"de ","color":"white"},{"text":"Zorro","color":"#ff7b00"}]',potion_contents={custom_color:16711765,custom_effects:[{id:"minecraft:jump_boost",duration:900,amplifier:4,show_particles:1b}]}]
item replace entity @s hotbar.8 with potion[custom_name='[{"text":"Ataque ","color":"#ff6300","italic": false},{"text":"de ","color":"white"},{"text":"Zorro","color":"#ff7b00"}]',potion_contents={custom_color:16711765,custom_effects:[{id:"minecraft:jump_boost",duration:900,amplifier:4,show_particles:1b}]}]
give @s[tag=supervivencia-z] minecraft:written_book[minecraft:written_book_content={author:"El Iluminado",generation:0,pages:[{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"#ff6600","text":"Bebida de Mandarina"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Mandarina"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," ",{"color":"red","text":"Bebida de Fresa"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Fresa"},"color":"dark_aqua","text":"[6 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gold","text":"Bebida de Durazno"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Durazno"},"color":"dark_aqua","text":"[8 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_green","text":"Recargas de Kit"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Recarga_Kit"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'},{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," 32 Flechas de ",{"color":"red","text":"Curacion V"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Flecha"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," Totem de la ",{"color":"gold","text":"Inmortalidad"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Totems"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"light_purple","text":"Manzana dorada encantada"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger ManzanaEncantada"},"color":"dark_aqua","text":"[1 Diamante]","underlined":true}]]'},{raw:'[["",{"bold":true,"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_blue","text":"Congelantes"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Congelante"},"color":"dark_aqua","text":"[10 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gray","text":"Golem de"},{"color":"light_purple","text":" "},{"color":"dark_red","text":"Hierro"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Golem"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_red","text":"Torreta"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Torreta"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'}],resolved:1b,title:{raw:"[°-=Carta_de_Productos=-°]"}},minecraft:custom_name='["",{"text":"a","italic":false,"color":"dark_red","obfuscated":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"[°-=Carta_de_Productos=-°]","bold":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"a","obfuscated":true}]']
give @s minecraft:carrot_on_a_stick[minecraft:lore=['[{"text":"Localiza al jugador mas","italic":false}]','[{"text":"cercano a una distancia","italic":false}]','[{"text":"de 100 metros","italic":false}]'],minecraft:custom_name='[{"text":"Rastreador","italic":false,"color":"green"}]'] 1
tellraw @s [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"El 'Ataque de Zorro' es para atinar fuertes criticos en el aire que podrian causa","color":"#ff6b00"},{"text":"r muerte instantanea, mientras que el 'Lanzador de bayas picosas' desplegara u","color":"white"},{"text":"na trampa que atrapara y da\u00f1ara a tus oponentes, usalo sin miedo, a ti no te afecta","color":"#ff9300"}]
playsound entity.fox.ambient master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute as @s[tag=!supervivencia-z] run fill 21 235 137 21 234 137 iron_bars
execute as @s[tag=!supervivencia-z] run playsound entity.zombie.attack_iron_door master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
execute as @s[tag=!supervivencia-z] run schedule function kitpvp:kits/zorro/inicio 4s
execute as @s[tag=supervivencia-z,tag=!yamero-survival-z] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/iniciando
execute as @s[tag=supervivencia-z,tag=!s-z-afavor] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/s-z_a_favor
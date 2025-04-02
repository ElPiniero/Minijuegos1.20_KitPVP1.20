scoreboard players reset #jugadores Conteo
scoreboard objectives add kitpvp-zona-de-kits trigger
scoreboard objectives add kitpvp-reiniciar-musica trigger
scoreboard objectives add kitpvp-parar-musica trigger
scoreboard objectives add kitpvp-reiniciar-juego trigger
scoreboard objectives add kitpvp trigger
scoreboard objectives add kitpvp-estadisticas trigger
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
scoreboard objectives add Damage custom:damage_taken
scoreboard objectives add AbsorbedDamage custom:damage_absorbed
scoreboard objectives add GappleON used:golden_apple
scoreboard objectives add EnGappleON used:enchanted_golden_apple
scoreboard objectives add Potion used:potion
scoreboard objectives add Shield custom:damage_blocked_by_shield
scoreboard objectives add SuTe used:dried_kelp
scoreboard objectives add Chorus used:chorus_fruit
scoreboard objectives add GDS used:cookie
scoreboard objectives add Muertes deathCount
scoreboard objectives add BetaM used:beetroot
scoreboard objectives add Cohete used:firework_rocket
scoreboard objectives add Proyectil_1 dummy
scoreboard objectives add Proyectil_2 dummy
scoreboard objectives add Proyectil_3 dummy
scoreboard objectives add Proyectil_4 dummy
scoreboard objectives add Estadisticas trigger
scoreboard objectives add Poseyendose dummy
scoreboard objectives add Musica dummy
scoreboard objectives add Encender_Creeper dummy
scoreboard objectives add Proyectil_5 dummy
scoreboard objectives add Proyectil_6 dummy
scoreboard objectives add Sandia used:melon_slice
scoreboard objectives add Rastreador used:carrot_on_a_stick
scoreboard objectives add Llamando_Oleada used:warped_fungus_on_a_stick
scoreboard objectives add Racha playerKillCount
scoreboard objectives add Totem used:totem_of_undying
scoreboard objectives add ZombieBuff dummy
scoreboard objectives add Conteo dummy
scoreboard objectives add AgarrarDiamante picked_up:light_blue_concrete
scoreboard objectives add RegistrarDiamante dummy
scoreboard objectives add ZombieShop picked_up:diamond {"text": "*_Diamantes_*","color": "dark_aqua","bold": true,"italic": false}
scoreboard objectives add muertes_jugador playerKillCount {"text": "-=|ASESINATOS|=-","color": "red","bold": true,"italic": false}
scoreboard objectives setdisplay sidebar muertes_jugador
scoreboard objectives add ZombieShop_Base dummy
scoreboard objectives add bajas_jugador deathCount
scoreboard objectives add BporM dummy
scoreboard objectives add B_T_Zombis dummy
scoreboard objectives add Baja_Zombi killed:zombie_villager
scoreboard objectives add Baja_Diamante killed:drowned
scoreboard objectives add Reaparecer dummy
scoreboard objectives add Animacion dummy
scoreboard objectives add ZombieDecomizo dropped:diamond
scoreboard objectives add Tienda_Raro used:poisonous_potato
scoreboard objectives add Limpieza dummy
scoreboard objectives add Pegar custom:damage_dealt
scoreboard objectives add Huevo used:egg
scoreboard objectives add Baya used:sweet_berries
scoreboard objectives add Crossbow used:crossbow
scoreboard objectives add Disparo-Rifle dummy
scoreboard objectives add Municion_Rifle dummy
scoreboard objectives add Disparo-Escopeta dummy
scoreboard objectives add INESoldado dummy
scoreboard objectives add Recargar dummy
scoreboard objectives add militar-descargar trigger
scoreboard objectives add Alcance-Bala dummy
scoreboard objectives add Conteo_Racha dummy
scoreboard objectives add joinGameKit dummy
scoreboard objectives add Bajas playerKillCount
scoreboard objectives add Vida health
scoreboard objectives add Registro dummy
scoreboard objectives add Muerte_por_Escuadron killed_by:skeleton
scoreboard objectives add Llamar_Escuadron used:goat_horn
scoreboard objectives add HP dummy
scoreboard objectives add Racha_mas_Alta dummy
scoreboard objectives add Mejores_Diamantes dummy
scoreboard objectives add Carta used:written_book
scoreboard objectives add Salto custom:jump
scoreboard objectives add Escopeta-cooldown dummy

scoreboard objectives add Esp_1-8 dummy
scoreboard objectives add Esp_Doctor dummy
scoreboard objectives add Esp_Zorro dummy
scoreboard objectives add Esp_CDO dummy
scoreboard objectives add Esp_CDN dummy
scoreboard objectives add Esp_CDE dummy
scoreboard objectives add Esp_Elite dummy
scoreboard objectives add Esp_Poseidon dummy
scoreboard objectives add Esp_Nexo dummy
scoreboard objectives add Esp_Stray dummy
scoreboard objectives add Esp_Neon dummy
scoreboard objectives add Esp_Tecnico dummy
scoreboard objectives add Esp_Sicario dummy
scoreboard objectives add Esp_Militar dummy
scoreboard objectives add Esp_Faraon dummy
scoreboard objectives add Esp_Creeper dummy
scoreboard objectives add Esp_Enderman dummy
scoreboard objectives add Esp_Quetzal dummy

scoreboard objectives add Racha_2_1-8 dummy
scoreboard objectives add Racha_2_Doctor dummy
scoreboard objectives add Racha_2_Zorro dummy
scoreboard objectives add Racha_2_CDO dummy
scoreboard objectives add Racha_2_CDN dummy
scoreboard objectives add Racha_2_CDE dummy
scoreboard objectives add Racha_2_Elite dummy
scoreboard objectives add Racha_2_Poseidon dummy
scoreboard objectives add Racha_2_Nexo dummy
scoreboard objectives add Racha_2_Stray dummy
scoreboard objectives add Racha_2_Neon dummy
scoreboard objectives add Racha_2_Tecnico dummy
scoreboard objectives add Racha_2_Sicario dummy
scoreboard objectives add Racha_2_Militar dummy
scoreboard objectives add Racha_2_Faraon dummy
scoreboard objectives add Racha_2_Creeper dummy
scoreboard objectives add Racha_2_Enderman dummy
scoreboard objectives add Racha_2_Quetzal dummy

scoreboard objectives add Polimata dummy
scoreboard objectives add Conteo dummy
scoreboard objectives add Levitado dummy
scoreboard objectives add Conteo_Torretas dummy
scoreboard objectives add Conteo_Golems dummy
scoreboard objectives add Desactivando dummy
scoreboard objectives add Zombis dummy
scoreboard objectives add Jugadores dummy
scoreboard objectives add Mejores_Diamantes dummy
scoreboard objectives add Conteo dummy
scoreboard objectives add ZombisInactivos dummy
scoreboard objectives add Z-S_EnContra dummy
scoreboard objectives add Tiempo dummy
scoreboard objectives add Operacion dummy
scoreboard objectives add Bayabrillosa used:glow_berries
scoreboard objectives add Catalejo used:spyglass
scoreboard objectives add Arco used:bow
scoreboard objectives add Enganchado dummy
scoreboard objectives add Atraido dummy
scoreboard objectives add Atraido_Tiempo dummy
scoreboard objectives setdisplay below_name Vida
team add Supervivientes
team modify Supervivientes friendlyFire false
team add Zombis
team modify Zombis friendlyFire false

bossbar add lvl1 {"text": "elmen"}
bossbar set lvl1 style progress
bossbar set lvl1 max 5
bossbar set lvl1 value 1
bossbar set lvl1 color white
bossbar set lvl1 name {"text":"Agonia de Masas","italic":false,"color":"red"}
bossbar set lvl1 visible true
bossbar set lvl1 players @a[tag=!sesion_no_iniciada,tag=elmenazotote]
data merge storage supervivencia-zombis {Horda:"sin_iniciar"}
data merge storage supervivencia-zombis {Dificultad:"sin_iniciar"}
data merge storage supervivencia-zombis {Iniciado:0b}
data merge storage supervivencia-zombis {Activado:0b}
function kitpvp:cuerpo_del_juego/materiales_mapa/oxxo/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/similares/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/imss/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/super_sanchez/reinicio
function kitpvp:cuerpo_del_juego/musica/musica
function kitpvp:cuerpo_del_juego/ambiente
function kitpvp:cuerpo_del_juego/entidades-trampa
function kitpvp:cuerpo_del_juego/materiales_cortos
summon interaction 14 230 133 {Tags:["P1.8"],UUID:[I;123,2343,64564,3434]}
summon interaction 21 230 137 {Tags:["CDE"],UUID:[I;123534,75656453,64525264,34364544]}
summon interaction 21 230 143 {Tags:["CDN"],UUID:[I;1232534,7565643,64525264,34364544]}
summon interaction 21 230 140 {Tags:["CDO"],UUID:[I;1232534,75656453,6425264,34364544]}
summon interaction 11 230 147 {Tags:["DCT"],UUID:[I;1232534,75656453,64525264,3464544]}
summon interaction 17 230 133 {Tags:["EL"],UUID:[I;1232534,75656453,64525264,3434544]}
summon interaction 14 230 147 {Tags:["EDM"],UUID:[I;1232534,75656453,645264,34364544]}
summon interaction 11 234 131 {Tags:["FR"],UUID:[I;1232534,756453,64525264,34364544]}
summon interaction 14 234 131 {Tags:["ML"],UUID:[I;12334,75656453,64525264,34364544]}
summon interaction 11 230 133 {Tags:["PSD"],UUID:[I;1232534,7656453,64525264,34364544]}
summon interaction 17 230 147 {Tags:["QZ"],UUID:[I;1232534,7565643,64525264,344]}
summon interaction 17 234 149 {Tags:["TEC"],UUID:[I;123534,75656453,6425264,34364544]}
summon interaction 14 234 149 {Tags:["NEXO"],UUID:[I;1232534,75656453,64525264,3364544]}
summon interaction 17 234 131 {Tags:["CRP"],UUID:[I;123234,756453,6452524,34364544]}
summon interaction 23 234 137 {Tags:["ZRR"],UUID:[I;123534,7556453,64525264,3434544]}
summon interaction 23 234 140 {Tags:["SCR"],UUID:[I;123234,75656453,6455264,34364544]}
summon interaction 11 234 149 {Tags:["STY"],UUID:[I;1232534,756453,6425264,34364544]}
summon interaction 23 234 143 {Tags:["NEON"],UUID:[I;1232534,7565453,64525264,34364544]}

summon text_display 18.5 232.0 140.5 {glow_color_override: -1, shadow: 0b, line_width: 200, text_opacity: 0, Invulnerable: 0b, PortalCooldown: 0, interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, see_through: 0b, text: '{"text":"C","extra":[{"text":"A","color":"#4AF84A"},{"text":"B","color":"#56F256"},{"text":"A","color":"#61EC61"},{"text":"L","color":"#6DE66D"},{"text":"L","color":"#78E078"},{"text":"E","color":"#84DB84"},{"text":"R","color":"#8FD58F"},{"text":"O ","color":"#9BCF9B"},{"text":"D","color":"#A6C9A6"},{"text":"E","color":"#B2C3B2"},{"text":"L","color":"gray"}],"clickEvent":{"action":"run_command","value":"/function kitpvp:kits/caballero_del_overworld/descripcion"},"color":"green","bold":true}', UUID: [I; -677874119, -609730278, -1122535444, -913470280], height: 0.0f, Motion: [0.0d, 0.0d, 0.0d], shadow_radius: 0.0f, Air: 300s, OnGround: 0b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.6f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [90.0f, 0.0f], default_background: 0b, Pos: [18.5d, 232.0d, 140.5d], background: 1073741824, Fire: 0s, width: 0.0f, view_range: 1.0f, alignment: "center",UUID:[I;82541557,924562,24684279,236346898]}
summon text_display 18.5 232.0 140.5 {glow_color_override: -1, shadow: 0b, line_width: 200, text_opacity: 0, Invulnerable: 0b, PortalCooldown: 0, interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, see_through: 0b, text: '{"text":"O","extra":[{"text":"V","color":"#97D1D1","bold":true},{"text":"E","color":"#8BD7D7","bold":true},{"text":"R","color":"#7EDEDE","bold":true},{"text":"W","color":"#71E4E4","bold":true},{"text":"O","color":"#65EAEA","bold":true},{"text":"R","color":"#58F1F1","bold":true},{"text":"L","color":"#4BF7F7","bold":true},{"text":"D","color":"aqua","bold":true}],"color":"#A4CACA","bold":true}', UUID: [I; 870594143, -444511709, -2006973227, -1096484910], height: 0.0f, Motion: [0.0d, 0.0d, 0.0d], shadow_radius: 0.0f, Air: 300s, OnGround: 0b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.35f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [90.0f, 0.0f], default_background: 0b, Pos: [18.5d, 232.0d, 140.5d], background: 1073741824, Fire: 0s, width: 0.0f, view_range: 1.0f, alignment: "center",UUID:[I;82541557,924562,24684279,23634689]}
summon interaction 19.5 232.0 140.5 {Tags:["cadeov","descripcion"],response:1b,width:2f,height:1f,UUID:[I;814199,-816925,566105,450238]}

summon text_display 18.5 232.0 143.5 {Rotation: [90.0f, 0.0f],alignment:center,text:'[{"text":"C","bold":true,"color":"dark_red"},{"text":"A","bold":true,"color":"#d01212"},{"text":"B","bold":true,"color":"#e32525"},{"text":"A","bold":true,"color":"#f63737"},{"text":"L","bold":true,"color":"#fe6033"},{"text":"L","bold":true,"color":"#fe9921"},{"text":"E","bold":true,"color":"#fed10e"},{"text":"RO DE","bold":true,"color":"#ffff00"},{"text":"L ","bold":true,"color":"#f6e90c"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.6f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]},UUID:[I;82541557,94562,2464279,236346898]}
summon text_display 18.5 232.0 143.5 {Rotation: [90.0f, 0.0f],alignment:center,text:'[{"text":"N","bold":true,"color":"#eace1b"},{"text":"E","bold":true,"color":"#dfb32a"},{"text":"T","bold":true,"color":"#dd9735"},{"text":"H","bold":true,"color":"#e87938"},{"text":"E","bold":true,"color":"#f35c3b"},{"text":"R","bold":true,"color":"red"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.35f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]},UUID:[I;82541557,92462,24684279,236346898]}
summon interaction 19.5 232.0 143.5 {Tags:["cadene","descripcion"],response:1b,width:2f,height:1f,UUID:[I;344415,717549,839458,709294]}

summon text_display 18.5 232.0 137.5 {Rotation: [90.0f, 0.0f],alignment:center,text:'[{"text":""},{"text":"C","bold":true,"color":"dark_purple"},{"text":"A","bold":true,"color":"#c709c7"},{"text":"B","bold":true,"color":"#d012d0"},{"text":"A","bold":true,"color":"#d91bd9"},{"text":"L","bold":true,"color":"#e224e2"},{"text":"L","bold":true,"color":"#eb2deb"},{"text":"E","bold":true,"color":"#f436f4"},{"text":"R","bold":true,"color":"light_purple"},{"text":"O ","bold":true,"color":"#fe5afe"},{"text":"D","bold":true,"color":"#fe75fe"},{"text":"E","bold":true,"color":"#fe91fe"},{"text":"L ","bold":true,"color":"#feacfe"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.6f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]},UUID:[I;821557,92562,24679,23636898]}
summon text_display 18.5 232.0 137.5 {Rotation: [90.0f, 0.0f],alignment:center,text:'[{"text":"E","bold":true,"color":"#fec8fe"},{"text":"N","bold":true,"color":"#fee3fe"},{"text":"D","bold":true,"color":"white"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.35f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]},UUID:[I;8241557,924562,2468279,236898]}
summon interaction 19.5 232.0 137.5 {Tags:["cadeen","descripcion"],response:1b,width:2f,height:1f,UUID:[I;756183,45215,268375,338776]}

summon text_display 17 232.0 136 {Rotation: [0.0f, 0.0f],alignment:center,text:'[{"text":""},{"text":"E","bold":true,"color":"white"},{"text":"L","bold":true,"color":"aqua"},{"text":"I","bold":true,"color":"gray"},{"text":"T","bold":true,"color":"#ffff00"},{"text":"E","bold":true,"color":"white"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;82547,924562,2464279,23636898]}
summon interaction 17 232.0 135 {Tags:["elite","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,995808]}
summon text_display 14 232.0 136 {Rotation: [0.0f, 0.0f],alignment:center,text:'[{"text":""},{"text":"1","bold":true,"color":"dark_aqua"},{"text":".","bold":true,"color":"aqua"},{"text":"8","bold":true,"color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;8254157,92562,2684279,23636898]}
summon interaction 14 232.0 135 {Tags:["1.8","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,299760]}
summon text_display 11 232.0 136 {Rotation: [0.0f, 0.0f],alignment:center,text:'[{"text":""},{"text":"P","bold":true,"color":"dark_aqua"},{"text":"O","bold":true,"color":"#48d0d0"},{"text":"S","bold":true,"color":"#91e3e3"},{"text":"E","bold":true,"color":"#daf5f5"},{"text":"I","bold":true,"color":"#ffffda"},{"text":"D","bold":true,"color":"#ffff91"},{"text":"O","bold":true,"color":"#ffff48"},{"text":"N","bold":true,"color":"#ffff00"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;557,924562,24684279,236346898]}
summon interaction 11 232.0 135 {Tags:["poseidon","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,618845]}

summon text_display 17 236 146 {Rotation: [-180f, 0.0f],alignment:center,text:'[{"text":"T","bold":true,"color":"gold"},{"text":"E","bold":true,"color":"#8cd039"},{"text":"C","bold":true,"color":"green"},{"text":"N","bold":true,"color":"#9ffe1f"},{"text":"I","bold":true,"color":"#ffff00"},{"text":"C","bold":true,"color":"#fe9f7f"},{"text":"O","bold":true,"color":"light_purple"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;8254157,562,24684279,236346898]}
summon interaction 17 236 147 {Tags:["tecnico","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,416735]}
summon text_display 14 236 146 {Rotation: [-180f, 0.0f],alignment:center,text:'[{"text":""},{"text":"N","bold":true,"color":"dark_purple"},{"text":"E","bold":true,"color":"#ffff00"},{"text":"X","bold":true,"color":"dark_purple"},{"text":"O","bold":true,"color":"#ffff00"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;8241557,92462,24684279,2363468]}
summon interaction 14 236 147 {Tags:["nexo","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,915458]}
summon text_display 11 236 146 {Rotation: [-180f, 0.0f],alignment:center,text:'[{"text":""},{"text":"S","bold":true,"color":"blue"},{"text":"T","bold":true,"color":"#1f7ede"},{"text":"R","bold":true,"color":"dark_aqua"},{"text":"A","bold":true,"color":"#5fbebe"},{"text":"Y","bold":true,"color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;825557,9562,284279,236898]}
summon interaction 11 236 147 {Tags:["stray","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,111842]}

summon text_display 17 232 144 {Rotation: [-180f, 0.0f],alignment:center,text:'[{"text":""},{"text":"Q","bold":true,"color":"green"},{"text":"U","bold":true,"color":"#15d393"},{"text":"E","bold":true,"color":"#54d3d3"},{"text":"T","bold":true,"color":"white"},{"text":"Z","bold":true,"color":"#ffff55"},{"text":"A","bold":true,"color":"#a9e900"},{"text":"L","bold":true,"color":"dark_green"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;8251557,92562,2468279,2363898]}
summon interaction 17 232 145 {Tags:["quetzal","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,527587]}
summon text_display 14 232 144 {Rotation: [-180f, 0.0f],alignment:center,text:'[{"text":""},{"text":"E","bold":true,"color":"#002815"},{"text":"N","bold":true,"color":"#482e57"},{"text":"D","bold":true,"color":"#91359a"},{"text":"E","bold":true,"color":"#d93bdc"},{"text":"R","bold":true,"color":"#d93adc"},{"text":"M","bold":true,"color":"#913298"},{"text":"A","bold":true,"color":"#482a54"},{"text":"N","bold":true,"color":"#002210"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;541557,9245,2468479,2364689]}
summon interaction 14 232 145 {Tags:["enderman","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,638256]}
summon text_display 11 232 144 {Rotation: [-180f, 0.0f],alignment:center,text:'[{"text":"D","color":"gray","bold":true},{"text":"O","color":"#a4a4a4"},{"text":"C","color":"#8b8b8b"},{"text":"T","color":"#717171"},{"text":"O","color":"#585858"},{"text":"R","color":"dark_gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;841557,92462,246279,2363498]}
summon interaction 11 232 145 {Tags:["doctor","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,85466]}

summon text_display 11 236 134 {Rotation: [0f, 0.0f],alignment:center,text:'[{"text":""},{"text":"F","bold":true,"color":"yellow"},{"text":"A","bold":true,"color":"blue"},{"text":"R","bold":true,"color":"yellow"},{"text":"A","bold":true,"color":"blue"},{"text":"O","bold":true,"color":"yellow"},{"text":"N","bold":true,"color":"blue"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;825457,92462,2468279,23636898]}
summon interaction 11 236 133 {Tags:["faraon","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,335474]}
summon text_display 14 236 134 {Rotation: [0f, 0.0f],alignment:center,text:'[{"text":""},{"text":"M","bold":true,"color":"#0e610b"},{"text":"I","bold":true,"color":"#1e951c"},{"text":"L","bold":true,"color":"#2ec92d"},{"text":"I","bold":true,"color":"green"},{"text":"T","bold":true,"color":"#2dc82d"},{"text":"A","bold":true,"color":"#1b921b"},{"text":"R","bold":true,"color":"#0a5c0a"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;82541557,9562,4279,236346898]}
summon interaction 14 236 133 {Tags:["militar","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,112954]}
summon text_display 17 236 134 {Rotation: [0f, 0.0f],alignment:center,text:'[{"text":"CR","color":"dark_green","bold": true},{"text":"EE","color":"white"},{"text":"PE","color":"green"},{"text":"R","color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;854557,92456,2484279,236346]}
summon interaction 17 236 133 {Tags:["creeper","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,85461]}

summon text_display 20 236 137 {Rotation: [90f, 0.0f],alignment:center,text:'[{"text":"Z","color":"#ff6100","bold": true},{"text":"O","color":"#ffb07f"},{"text":"R","color":"white"},{"text":"R","color":"#ffc07f"},{"text":"O","color":"#ff8100"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;8251557,92462,2684279,2363898]}
summon interaction 21 236 137 {Tags:["zorro","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,491992]}
summon text_display 20 236 140 {Rotation: [90f, 0.0f],alignment:center,text:'[{"text":"S","color":"red","bold": true},{"text":"I","color":"#e86969"},{"text":"C","color":"#d39393"},{"text":"A","color":"gray"},{"text":"R","color":"#d3d3d3"},{"text":"I","color":"#e9e9e9"},{"text":"O","color":"white"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;8254157,92456,2468427,46898]}
summon interaction 21 236 140 {Tags:["sicario","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,664524]}
summon text_display 20 236 143 {Rotation: [90f, 0.0f],alignment:center,text:'[{"text":""},{"text":"N","bold":true,"color":"red"},{"text":"E","bold":true,"color":"#be3f7e"},{"text":"O","bold":true,"color":"#7e3fbe"},{"text":"N","bold":true,"color":"blue"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0.3f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f]},UUID:[I;825557,24562,4684279,263688]}
summon interaction 21 236 143 {Tags:["neon","descripcion"],response:1b,width:2f,height:1f,UUID:[I;2,3,4,181385]}

summon text_display 14 239 140 {text:'{"text":"Zona de kits","color":"light_purple","italic":true,"font":"uniform","bold":true}',billboard:center,alignment:center,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0f, 0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [10.0f, 10.0f, 0.0f]},UUID:[I;825417,9262,246279,23634898]}
summon text_display 0 237 140 {text:'{"text":"Configuración","color":"light_purple","italic":true,"font":"uniform","bold":true}',billboard:center,alignment:center,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0f, 0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 5.0f, 0.0f]},UUID:[I;8417,9262,246279,247]}

summon text_display -4 236 140 {Rotation:[-90f,0f],text:'{"text":"Modo","color":"white","italic":true,"font":"uniform","bold":true}',billboard:fixed,alignment:center,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 4.0f, 0.0f]},UUID:[I;1,924562,24684279,236346898]}
summon text_display 0 236.000 136 {Rotation:[0f,0f],text:'{"text":"Mapa","color":"white","italic":true,"font":"uniform","bold":true}',billboard:fixed,alignment:center,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 4.0f, 0.0f]},UUID:[I;1,9242,244279,23698]}

summon item_display -4 235 143 {Tags:["modo-eliminacion"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -1576374045, -1492096122], height: 0.0f,UUID:[I;825557,924562,24684279,236346898]}
summon interaction -3.75 235.25 143.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["modo-eliminacion"], height: 0.5f,UUID:[I;825417,66666,246279,23634898]}
summon item_display -4 234 143 {Tags:["modo-arena"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -157674045, -1492096122], height: 0.0f,UUID:[I;82541557,1,24684279,236346898]}
summon interaction -3.75 234.25 143.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["modo-arena"], height: 0.5f,UUID:[I;825417,9262,7,23634898]}
summon item_display -4 233 143 {Tags:["modo-zombis"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -1576374045, -149209622], height: 0.0f,UUID:[I;82541557,2,24684279,236346898]}
summon interaction -3.75 233.25 143.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["modo-zombis"], height: 0.5f,UUID:[I;8,9262,246279,23634898]}

summon text_display -4 235 142.000 {Rotation:[-90f,0f],alignment:left,text:'[{"text":""},{"text":"E","bold":true,"color":"gold"},{"text":"L","bold":true,"color":"#d6a541"},{"text":"I","bold":true,"color":"#d3a84f"},{"text":"M","bold":true,"color":"#d0ab5d"},{"text":"I","bold":true,"color":"#cead6b"},{"text":"N","bold":true,"color":"#cbb079"},{"text":"A","bold":true,"color":"#c8b386"},{"text":"C","bold":true,"color":"#c6b594"},{"text":"I","bold":true,"color":"#c3b8a2"},{"text":"Ó","bold":true,"color":"#c0bbb0"},{"text":"N","bold":true,"color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [.4f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 0.0f]},UUID:[I;825457,9262,246879,9999]}
summon text_display -4 234 142.000 {Rotation:[-90f,0f],alignment:left,text:'[{"text":""},{"text":"A","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"#d2a956"},{"text":"E","bold":true,"color":"#cbb079"},{"text":"N","bold":true,"color":"#c4b79b"},{"text":"A","bold":true,"color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-.28f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 0.0f]},UUID:[I;82541557,924562,24684279,888]}
summon text_display -4 233 142.000 {Rotation:[-90f,0f],alignment:left,text:'[{"text":""},{"text":"S","bold":true,"color":"dark_red"},{"text":"U","bold":true,"color":"#b60303"},{"text":"P","bold":true,"color":"#af0707"},{"text":"E","bold":true,"color":"#a80a0a"},{"text":"R","bold":true,"color":"#a10e0e"},{"text":"V","bold":true,"color":"#9a1111"},{"text":"I","bold":true,"color":"#931515"},{"text":"V","bold":true,"color":"#8c1818"},{"text":"E","bold":true,"color":"#851c1c"},{"text":"N","bold":true,"color":"#7e1f1f"},{"text":"C","bold":true,"color":"#772323"},{"text":"I","bold":true,"color":"#702626"},{"text":"A ","bold":true,"color":"#692a2a"},{"text":"Z","bold":true,"color":"#622d2d"},{"text":"O","bold":true,"color":"#5b3131"},{"text":"M","bold":true,"color":"#543434"},{"text":"B","bold":true,"color":"#4d3838"},{"text":"I","bold":true,"color":"#463b3b"},{"text":"S","bold":true,"color":"dark_gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [1.35f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.4f, 1.5f, 0.0f]},UUID:[I;8244447,924562,24684279,236346898]}

summon item_display -4 235 139.5 {Motion: [0.0d, 0.0d, 0.0d], glow_color_override: -1, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM4ZWExZjUxZjI1M2ZmNTE0MmNhMTFhZTQ1MTkzYTRhZDhjM2FiNWU5YzZlZWM4YmE3YTRmY2I3YmFjNDAifX19"}], id: [I; -1467980511, 420563077, -2018747803, 1968399586]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.365f, 0.865f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 0.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 137.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 1779249464, 2001421820, -1299492566, 1857922208], height: 0.0f,UUID:[I;82541557,65,24684279,236346898]}
summon item_display -4 234 140.5 {Motion: [0.0d, 0.0d, 0.0d], glow_color_override: -1, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM4ZWExZjUxZjI1M2ZmNTE0MmNhMTFhZTQ1MTkzYTRhZDhjM2FiNWU5YzZlZWM4YmE3YTRmY2I3YmFjNDAifX19"}], id: [I; -1467980511, 420563077, -2018747803, 1968399586]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.730f, 0.865f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 0.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 137.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 1779249464, 2001421820, -1299492566, 185792228], height: 0.0f,UUID:[I;87,924562,24684279,236346898]}
summon item_display -4 233 138.5 {Motion: [0.0d, 0.0d, 0.0d], glow_color_override: -1, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM4ZWExZjUxZjI1M2ZmNTE0MmNhMTFhZTQ1MTkzYTRhZDhjM2FiNWU5YzZlZWM4YmE3YTRmY2I3YmFjNDAifX19"}], id: [I; -1467980511, 420563077, -2018747803, 1968399586]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.51f, 0.865f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 0.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 233.0d, 137.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 1779249464, 2001421820, -1299492566, 18579228], height: 0.0f,UUID:[I;82541557,924562,3,236346898]}

summon interaction -3.9 235.73 139.85 {Tags:["info-eliminacion"],width:.25,height:.25,response:1b,UUID:[I;82541557,435454545,69,236346898]}
summon interaction -3.9 234.73 141.23 {Tags:["info-arena"],width:.25,height:.25,response:1b,UUID:[I;82541,92452,2777,236346898]}
summon interaction -3.9 233.76 138.000 {Tags:["info-zombis"],width:.25,height:.25,response:1b,UUID:[I;82541557,924562,24684279,8787878]}

summon text_display 0.000 235 136.5 {Rotation:[0f,0f],alignment:left,text:'[{"text":""},{"text":"P","bold":true,"color":"gray"},{"text":"U","bold":true,"color":"#caa4a4"},{"text":"E","bold":true,"color":"#d78b8b"},{"text":"B","bold":true,"color":"#e47171"},{"text":"L","bold":true,"color":"#f15858"},{"text":"O","bold":true,"color":"red"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 0.0f]},UUID:[I;2721,9262,246879,9999]}
summon text_display 0.000 234 136.5 {Rotation:[0f,0f],alignment:left,text:'[{"text":""},{"text":"A","bold":true,"color":"dark_green"},{"text":"L","bold":true,"color":"#05b205"},{"text":"D","bold":true,"color":"#0ba60b"},{"text":"E","bold":true,"color":"#119b11"},{"text":"A ","bold":true,"color":"#168f16"},{"text":"P","bold":true,"color":"#1c841c"},{"text":"O","bold":true,"color":"#227822"},{"text":"D","bold":true,"color":"#286d28"},{"text":"R","bold":true,"color":"#2d612d"},{"text":"I","bold":true,"color":"#335633"},{"text":"D","bold":true,"color":"#394a39"},{"text":"A","bold":true,"color":"dark_gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [.85f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 0.0f]},UUID:[I;82541557,2721,24684279,888]}
summon text_display 0.000 233 136.5 {Rotation:[0f,0f],alignment:left,text:'[{"text":""},{"text":"H","bold":true,"color":"dark_aqua"},{"text":"A","bold":true,"color":"#1cc5c5"},{"text":"B","bold":true,"color":"#38cccc"},{"text":"I","bold":true,"color":"#55d3d3"},{"text":"T","bold":true,"color":"#71dada"},{"text":"A","bold":true,"color":"#8de2e2"},{"text":"C","bold":true,"color":"#aae9e9"},{"text":"I","bold":true,"color":"#c6f0f0"},{"text":"Ó","bold":true,"color":"#e2f7f7"},{"text":"N","bold":true,"color":"white"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [.35f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.4f, 1.5f, 0.0f]},UUID:[I;8244447,924562,248889,11]}
summon item_display -1.5 235 136.5 {Tags:["mapa-pueblo"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [0.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -1576374045, -1492096122], height: 0.0f,UUID:[I;82555,924562,22721279,23777898]}
summon interaction -1.5 235.25 136.000 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["mapa-pueblo"], height: 0.5f,UUID:[I;8272117,66666,27219,23634898]}
summon item_display -1.5 234 136.5 {Tags:["mapa-aldea"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [0.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -157674045, -1492096122], height: 0.0f,UUID:[I;82721557,2721,2468279,236346898]}
summon interaction -1.5 234.25 136.000 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["mapa-aldea"], height: 0.5f,UUID:[I;825417,2721,7,23634898]}
summon item_display -1.5 233 136.5 {Tags:["mapa-habitacion"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [0.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -1576374045, -149222], height: 0.0f,UUID:[I;825557,2,24684279,232721898]}
summon interaction -1.5 233.25 136.000 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["mapa-habitacion"], height: 0.5f,UUID:[I;8,9262,246279,22721]}

summon item_display 7 236 145 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;14313,653434,284723,6453]}
summon item_display 7 235 145 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,65434,284723,6453]}
summon item_display 14 231 140 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,24723,6453]}
summon item_display 7 236 145 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,284723,653]}
summon item_display 7 236 135 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;1813,653434,284723,6453]}
summon item_display 7 235 135 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,6434,284723,6453]}
summon item_display 9 236 147 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,723,6453]}
summon item_display 11 234 149 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,284723,53]}
summon item_display 14 234 149 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;14313,65434,284723,6453]}
summon item_display 17 234 149 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,65334,28473,6453]}
summon item_display 23 234 143 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;14813,63434,28473,6453]}
summon item_display 23 234 140 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,65434,4723,6453]}
summon item_display 23 234 137 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;14813,653434,4723,6453]}
summon item_display 17 234 131 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,3434,284723,6453]}
summon item_display 14 234 131 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,284723,3]}
summon item_display 11 234 131 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;1413,63434,284723,6453]}
summon item_display 11 230 133 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;14383,653434,24723,6453]}
summon item_display 14 230 133 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,6534,2423,6453]}
summon item_display 17 230 133 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;3813,53434,284723,6453]}
summon item_display 21 230 137 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;13813,65434,2823,6453]}
summon item_display 21 230 140 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,28,6453]}
summon item_display 21 230 143 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;13813,5434,223,6453]}
summon item_display 17 230 147 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143,653434,284723,6453]}
summon item_display 14 230 147 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,34,284723,6453]}
summon item_display 11 230 147 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,64,284723,6453]}
summon item_display 9 236 133 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;1438,653434,28323,6453]}
summon item_display 19 236 133 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;14381,65334,28723,3]}
summon item_display 21 236 135 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;13,6434,284723,63]}
summon item_display 21 236 145 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;3813,3434,284723,6453]}
summon item_display 19 236 147 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;813,653434,284723,6453]}
summon item_display 19 236 147 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;1666,653434,284723,6453]}
summon item_display 0 233 140 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,1,6453]}

summon item_frame 16.97 222.50 138.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 21}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 222, TileX: 16, Invisible: 0b, TileZ: 138, Fixed: 1b,UUID:[I;34,6457,3453,78666]}
summon item_frame 16.97 222.50 139.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 22}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 222, TileX: 16, Invisible: 0b, TileZ: 139, Fixed: 1b,UUID:[I;634,647,3453,78666]}
summon item_frame 16.97 222.50 140.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 23}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 222, TileX: 16, Invisible: 0b, TileZ: 140, Fixed: 1b,UUID:[I;634,6457,353,78666]}
summon item_frame 16.97 222.50 141.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 24}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 222, TileX: 16, Invisible: 0b, TileZ: 141, Fixed: 1b,UUID:[I;634,6457,3453,7666]}
summon item_frame 16.97 222.50 142.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 25}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 222, TileX: 16, Invisible: 0b, TileZ: 142, Fixed: 1b,UUID:[I;634,6457,343,7666]}
summon item_frame 16.97 223.50 138.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 26}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 223, TileX: 16, Invisible: 0b, TileZ: 138, Fixed: 1b,UUID:[I;64,647,3453,78666]}
summon item_frame 16.97 223.50 139.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 27}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 223, TileX: 16, Invisible: 0b, TileZ: 139, Fixed: 1b,UUID:[I;634,657,3453,7666]}
summon item_frame 16.97 223.50 140.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 28}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 223, TileX: 16, Invisible: 0b, TileZ: 140, Fixed: 1b,UUID:[I;34,6457,345,78666]}
summon item_frame 16.97 223.50 141.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 29}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 223, TileX: 16, Invisible: 0b, TileZ: 141, Fixed: 1b,UUID:[I;634,617,3453,78666]}
summon item_frame 16.97 223.50 142.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 30}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Fire: -1s, TileY: 223, TileX: 16, Invisible: 0b, TileZ: 142, Fixed: 1b,UUID:[I;634,6457,23,78666]}

summon text_display 16.99 224.25 140.000 {text:'{"text": "Estas a punto de ingresar a"}',alignment:left,Rotation:[90f,0f],background:13,UUID:[I;125,542,45,756]}
summon text_display 16.99 221.25 140 {text:'[{"text": "Consulta la guía basica del minijuego para ingresar, con el comando "},{"text": "/kitpvp","color": "light_purple","italic": true}]',alignment:left,Rotation:[90f,0f],background:13,UUID:[I;125,52,45,756]}

#summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,284723,6453]}
#summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-329941965,-1167766455,-1150007613,-57112474],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZhMDc1ZTk1OTI3YWQzZDUyN2YyNWEwODVlYmI0Mjk0NmU1YzZmMzNkNzdjN2ZlMmE5NzAxYmQ1OWE1NDM2NCJ9fX0="}]}}},UUID:[I;143813,653434,284723,6453]}

#YYLWSZTH
#74
#2.1655

#1225.85

#425.7
#1.263204748

#10.5760122
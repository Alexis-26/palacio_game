extends Node2D

var deck = [
	{"id": 1, "name": "As de clubs", "texture": "res://assets/Cards (large)/card_clubs_A.png"},
	{"id": 2, "name": "2 de clubs", "texture": "res://assets/Cards (large)/card_clubs_02.png"},
	{"id": 3, "name": "3 de clubs", "texture": "res://assets/Cards (large)/card_clubs_03.png"},
	{"id": 4, "name": "4 de clubs", "texture": "res://assets/Cards (large)/card_clubs_04.png"},
	{"id": 5, "name": "5 de clubs", "texture": "res://assets/Cards (large)/card_clubs_05.png"},
	{"id": 6, "name": "6 de clubs", "texture": "res://assets/Cards (large)/card_clubs_06.png"},
	{"id": 7, "name": "7 de clubs", "texture": "res://assets/Cards (large)/card_clubs_07.png"},
	{"id": 8, "name": "8 de clubs", "texture": "res://assets/Cards (large)/card_clubs_08.png"},
	{"id": 9, "name": "9 de clubs", "texture": "res://assets/Cards (large)/card_clubs_09.png"},
	{"id": 10, "name": "10 de clubs", "texture": "res://assets/Cards (large)/card_clubs_10.png"},
	{"id": 11, "name": "J de clubs", "texture": "res://assets/Cards (large)/card_clubs_J.png"},
	{"id": 12, "name": "Q de clubs", "texture": "res://assets/Cards (large)/card_clubs_Q.png"},
	{"id": 13, "name": "K de clubs", "texture": "res://assets/Cards (large)/card_clubs_K.png"},
	{"id": 14, "name": "As de diamons", "texture": "res://assets/Cards (large)/card_diamonds_A.png"},
	{"id": 15, "name": "2 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_02.png"},
	{"id": 16, "name": "3 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_03.png"},
	{"id": 17, "name": "4 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_04.png"},
	{"id": 18, "name": "5 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_05.png"},
	{"id": 19, "name": "6 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_06.png"},
	{"id": 20, "name": "7 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_07.png"},
	{"id": 21, "name": "8 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_08.png"},
	{"id": 22, "name": "9 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_09.png"},
	{"id": 23, "name": "10 de diamons", "texture": "res://assets/Cards (large)/card_diamonds_10.png"},
	{"id": 24, "name": "J de diamons", "texture": "res://assets/Cards (large)/card_diamonds_J.png"},
	{"id": 25, "name": "Q de diamons", "texture": "res://assets/Cards (large)/card_diamonds_Q.png"},
	{"id": 26, "name": "K de diamons", "texture": "res://assets/Cards (large)/card_diamonds_K.png"},
	{"id": 27, "name": "As de hearts", "texture": "res://assets/Cards (large)/card_hearts_A.png"},
	{"id": 28, "name": "2 de hearts", "texture": "res://assets/Cards (large)/card_hearts_02.png"},
	{"id": 29, "name": "3 de hearts", "texture": "res://assets/Cards (large)/card_hearts_03.png"},
	{"id": 30, "name": "4 de hearts", "texture": "res://assets/Cards (large)/card_hearts_04.png"},
	{"id": 31, "name": "5 de hearts", "texture": "res://assets/Cards (large)/card_hearts_05.png"},
	{"id": 32, "name": "6 de hearts", "texture": "res://assets/Cards (large)/card_hearts_06.png"},
	{"id": 33, "name": "7 de hearts", "texture": "res://assets/Cards (large)/card_hearts_07.png"},
	{"id": 34, "name": "8 de hearts", "texture": "res://assets/Cards (large)/card_hearts_08.png"},
	{"id": 35, "name": "9 de hearts", "texture": "res://assets/Cards (large)/card_hearts_09.png"},
	{"id": 36, "name": "10 de hearts", "texture": "res://assets/Cards (large)/card_hearts_10.png"},
	{"id": 37, "name": "J de hearts", "texture": "res://assets/Cards (large)/card_hearts_J.png"},
	{"id": 38, "name": "Q de hearts", "texture": "res://assets/Cards (large)/card_hearts_Q.png"},
	{"id": 39, "name": "K de hearts", "texture": "res://assets/Cards (large)/card_hearts_K.png"},
	{"id": 40, "name": "As de spades", "texture": "res://assets/Cards (large)/card_spades_A.png"},
	{"id": 41, "name": "2 de spades", "texture": "res://assets/Cards (large)/card_spades_02.png"},
	{"id": 42, "name": "3 de spades", "texture": "res://assets/Cards (large)/card_spades_03.png"},
	{"id": 43, "name": "4 de spades", "texture": "res://assets/Cards (large)/card_spades_04.png"},
	{"id": 44, "name": "5 de spades", "texture": "res://assets/Cards (large)/card_spades_05.png"},
	{"id": 45, "name": "6 de spades", "texture": "res://assets/Cards (large)/card_spades_06.png"},
	{"id": 46, "name": "7 de spades", "texture": "res://assets/Cards (large)/card_spades_07.png"},
	{"id": 47, "name": "8 de spades", "texture": "res://assets/Cards (large)/card_spades_08.png"},
	{"id": 48, "name": "9 de spades", "texture": "res://assets/Cards (large)/card_spades_09.png"},
	{"id": 49, "name": "10 de spades", "texture": "res://assets/Cards (large)/card_spades_10.png"},
	{"id": 50, "name": "J de spades", "texture": "res://assets/Cards (large)/card_spades_J.png"},
	{"id": 51, "name": "Q de spades", "texture": "res://assets/Cards (large)/card_spades_Q.png"},
	{"id": 52, "name": "K de spades", "texture": "res://assets/Cards (large)/card_spades_K.png"},
]
var player1_cartas_abajo = []
var player1_cartas_arriba = []
var player1_mano = []

var player2_cartas_abajo = []
var player2_cartas_arriba = []
var player2_mano = []
var selected_card = null

func _ready():
	$Descarte.position = Vector2(640, 360)  # si tu juego está en 1280x720
	$Deck.position = Vector2(420, 300)
	repartir_cartas()
	var carta_inicio = deck.pop_front()
	var card_instance = preload("res://Items/Cards/Cards_scene/Card.tscn").instantiate()
	card_instance.card_id = carta_inicio["id"]
	card_instance.card_name = carta_inicio["name"]
	card_instance.front_texture = load(carta_inicio["texture"])
	card_instance.is_face_up = true
	card_instance.is_in_hand = true
	$Descarte.add_child(card_instance)

func repartir_cartas():
	deck.shuffle()
	for i in range(3):
		player1_cartas_abajo.append(deck.pop_front())
		player1_cartas_arriba.append(deck.pop_front())
		player1_mano.append(deck.pop_front())
		#player2_hand.append(deck.pop_front())
	cartas_pantalla()

func descartar_dict(card_id):
	# Elimina las cartas seleccionadas en pantalla pero en el diccionario de la mano
	#print(player1_mano)
	for i in range(player1_mano.size()):
		var card_data = player1_mano[i]
		if card_id == card_data["id"]:
			#print("Descartando: ", card_data)
			player1_mano.erase(card_data)
			#print(player1_mano)
			break

func get_card_value(card):
	var name = card.card_name
	var parts = name.split(" ")
	var value_str = parts[0]
	
	match value_str:
		"As":
			return 14
		"J":
			return 11
		"Q":
			return 12
		"K":
			return 13
		_:
			return int(value_str)


func press_deck(card):
	var num_cartas = len(deck)
	var num_mano = len(player1_mano)
	if num_cartas > 0 and num_mano < 3:
		# Agregando cartas al diccionario de la mano del jugador
		player1_mano.append(deck.pop_front())
		print("En el deck hay: ", len(deck))
		# El último diccionario agregado siempre será:
		var ultima_carta = player1_mano[player1_mano.size() - 1]
		# print("Carta agregada: ", ultima_carta)
		entregar_carta_pantalla(ultima_carta)
		if len(deck) == 0:
			$Deck.queue_free()
	else:
		print("Tienes 3 cartas en tu mano")

func entregar_carta_pantalla(card):
	# print("Carta recibida: ", card)
	var player1 = $Player1
	var player1_mano_node = player1.get_node("Mano")
	var card_data = card
	var card_instance = preload("res://Items/Cards/Cards_scene/Card.tscn").instantiate()
	card_instance.card_id = card_data["id"]
	card_instance.card_name = card_data["name"]
	card_instance.front_texture = load(card_data["texture"])
	card_instance.is_face_up = true
	card_instance.is_in_hand = true
	player1_mano_node.add_child(card_instance)
	# Reposicionar TODAS las cartas en la mano para que estén ordenadas
	var separation = 80  # espacio horizontal entre cartas
	# Crear un Tween
	var tween = create_tween()
	for i in range(player1_mano_node.get_child_count()):
		var child_card = player1_mano_node.get_child(i)
		child_card.position = Vector2(i * separation, 0)
		# Animar hacia esa misma posición (en realidad no se mueve, pero puedes ponerle un efecto de escala o rebote si quieres)
		tween.tween_property(card_instance, "scale", Vector2(1.1, 1.1), 0.1).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
		tween.tween_property(card_instance, "scale", Vector2(1, 1), 0.1).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)
	

func cartas_pantalla():
	var player1 = $Player1
	var player1_mano_node = player1.get_node("Mano")
	var player1_cartasabajo_node = player1.get_node("Cartas_abajo")
	var player1_cartasarriba_node = player1.get_node("Cartas_arriba")
	player1_mano_node.position = Vector2(500, 700)  # ← aquí decides dónde poner TODA la mano
	player1_cartasabajo_node.position = Vector2(530, 520)  # ← aquí decides dónde poner TODA la mano
	player1_cartasarriba_node.position = Vector2(500, 530)  # ← aquí decides dónde poner TODA la mano
	
	# Cartas boca abajo
	for i in range(player1_cartas_abajo.size()):
		var card_data = player1_cartas_abajo[i]
		var card_instance = preload("res://Items/Cards/Cards_scene/Card.tscn").instantiate()
		card_instance.card_id = card_data["id"]
		card_instance.card_name = card_data["name"]
		card_instance.front_texture = load(card_data["texture"])
		card_instance.is_face_up = false
		card_instance.is_in_hand = false
		player1_cartasabajo_node.add_child(card_instance)
		card_instance.position = Vector2(i * 100, 0)
		# Posicionar las cartas en la mano, por ejemplo:
		# card_instance.position = Vector2(500 + i * 80, 100)  # ejemplo visual para alinearlas
		
	for i in range(player1_cartas_arriba.size()):
		var card_data = player1_cartas_arriba[i]
		var card_instance = preload("res://Items/Cards/Cards_scene/Card.tscn").instantiate()
		card_instance.card_id = card_data["id"]
		card_instance.card_name = card_data["name"]
		card_instance.front_texture = load(card_data["texture"])
		card_instance.is_face_up = true
		card_instance.is_in_hand = false
		player1_cartasarriba_node.add_child(card_instance)
		card_instance.position = Vector2(i * 100, 0)
		# Posicionar las cartas en la mano, por ejemplo:
		#card_instance.position = Vector2(500 + i * 80, 300)  # ejemplo visual para alinearlas
		
	for i in range(player1_mano.size()):
		var card_data = player1_mano[i]
		var card_instance = preload("res://Items/Cards/Cards_scene/Card.tscn").instantiate()
		card_instance.card_id = card_data["id"]
		card_instance.card_name = card_data["name"]
		card_instance.front_texture = load(card_data["texture"])
		card_instance.is_face_up = true
		card_instance.is_in_hand = true
		player1_mano_node.add_child(card_instance)
		 # Solo separación horizontal
		card_instance.position = Vector2(i * 80, 0)
		## Posicionar las cartas en la mano, por ejemplo:
		#card_instance.position = Vector2(500 + i * 80, 500)  # ejemplo visual para alinearlas

func descartar_carta(card):
	var descarte_node = $Descarte
	# Quitar de la mano visualmente
	card.get_parent().remove_child(card)
	
	# Añadirla al nodo Descarte
	descarte_node.add_child(card)
	
	# Asegurar que quede arriba visualmente
	descarte_node.move_child(card, descarte_node.get_child_count() - 1)
	
	# Reposicionarla en el centro, ligeramente desplazada para que no se vea plano
	var offset = Vector2(randf_range(-5, 5), randf_range(-5, 5))
	card.position = Vector2.ZERO + offset
	
	# Rotación aleatoria entre -10° y +10°
	card.rotation_degrees = randf_range(-10, 10)
	
	# Marcar que ya no está en la mano
	card.is_in_hand = false
	
	# Opcional: bloquear interacción si ya no debería moverse
	card.set_process_input(false)
	
	descartar_dict(card.card_id)

func play_card(card):
	var valor = get_card_value(card)
	var descarte_nodo = $Descarte
	var ultima_carta_descarte = null
	var valor_carta_descarte = 0
	
	if descarte_nodo.get_child_count() > 0:
		ultima_carta_descarte = descarte_nodo.get_child(descarte_nodo.get_child_count() - 1)
		valor_carta_descarte = get_card_value(ultima_carta_descarte)
		
	if ultima_carta_descarte:
		
		if valor == 10:
			# Agregar un temporizador
			descartar_carta(card)
			# Elimina todas las cartas hijas del nodo Descarte
			for child in descarte_nodo.get_children():
				child.queue_free()
				
		elif valor >= valor_carta_descarte:
			descartar_carta(card)
			
		else:
			# Si no se puede jugar la carta esto hace que no se pueda lanzar y contrarestar la animacion
			selected_card = null
			on_card_selected(card)
	else:
		# Si no hay carta en descarte, cualquier carta puede abrir juego
		descartar_carta(card)

func on_card_selected(card):
	if card.is_in_hand:
		if selected_card == null:
			# No hay ninguna seleccionada, selecciona esta
			card.select_card()
			selected_card = card
			
		elif selected_card == card:
			# Se hizo clic nuevamente en la misma carta → ejecutar acción
			play_card(card)
			selected_card = null
			
		else:
			# Otra carta fue seleccionada → deseleccionar la anterior
			selected_card.select_card() # Esto la baja
			card.select_card() # Esto sube la nueva carta
			selected_card = card
			
		#card.flip_card()
		# Aquí decides si la carta simplemente se voltea o si ya se juega
		# Por ahora, vamos directo al descarte:
		#descartar_carta(card)
		#print("Carta descartada:", card.card_name)
	#else:
		#print("No puedes usar esta carta porque no está en la mano")

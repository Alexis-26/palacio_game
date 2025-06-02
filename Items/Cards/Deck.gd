extends Area2D

func _ready():
	print("Deck listo para clics")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print("Tomando una carta...")
		get_tree().call_group("game_manager", "press_deck", self)

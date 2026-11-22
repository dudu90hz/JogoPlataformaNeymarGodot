extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var volume = AudioServer.get_bus_index("Master")
	$CheckButton.button_pressed = AudioServer.is_bus_mute(volume)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func voltar() -> void:
	get_tree().change_scene_to_file("res://cena_inicio.tscn")
	
	
func _silenciar() -> void:
	var volume = AudioServer.get_bus_index("Master")
	if ($CheckButton.button_pressed):
		AudioServer.set_bus_mute(volume, true)
	else:
		AudioServer.set_bus_mute(volume, false)
	
	

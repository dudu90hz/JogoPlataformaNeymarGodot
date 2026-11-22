extends Node2D

func _ready() -> void:
	ScriptGlobal.portao = self

func ir_para_final(body: Node2D) -> void:
	if (body.name=="Personagem"):
		get_tree().change_scene_to_file("res://cena_final.tscn")

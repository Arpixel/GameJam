extends Area2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.name == "KinematicBody2D":
		get_tree().change_scene("res://Scenes/Level3.tscn")
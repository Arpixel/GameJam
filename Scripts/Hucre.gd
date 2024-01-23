extends Node2D
var Aktif = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	if Input.is_action_pressed("E") and Aktif == true:
		get_tree().change_scene("res://Scenes/level0.tscn")


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Aktif = true
		$Player/Player/ActionText.text = "press e to enter"
		


func _on_Area2D_body_exited(_body):
	Aktif = false
	$Player/Player/ActionText.text = " "

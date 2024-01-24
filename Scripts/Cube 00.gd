extends Node2D


var Aktif = false
onready var AnimSprite = $"AnimatedSprite 00"


func _process(_delta):
	if Input.is_action_just_pressed("E") and Aktif == true and Global.Player_Crouch == false:
		Global.Player_Crouch = true
		AnimSprite.play("Hide")
		
	elif Input.is_action_just_pressed("E") and Global.Player_Crouch == true:
		Global.Player_Crouch = false
		AnimSprite.play("default")


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Aktif = true
		Global.player_text = "Press E to crouch"


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		Aktif = false
		Global.player_text = ""

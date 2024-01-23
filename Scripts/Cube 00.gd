extends StaticBody2D


var Aktif = false


func _process(_delta):
	if Input.is_action_just_pressed("E") and Aktif == true and Global.Player_Crouch == false:
		Global.Player_Crouch = true
	elif Input.is_action_just_pressed("E") and Aktif == true and Global.Player_Crouch == true:
		Global.Player_Crouch = false


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Aktif = true


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		Aktif = false

extends Node2D

var ColisionAktif = false

# BAŞLANGIÇTA SIFIRLAMA

func _ready():
	ColisionAktif = false

func _process(_delta):
	
	
	# IŞINLANMA
	
	if Input.is_action_just_pressed("E") and ColisionAktif:
		Global.alarm_system = false
		Global.Checkpoint()
		Global.Save_Game()
		get_tree().change_scene("res://Scenes/Room1YemekOda.tscn")

# GİRME

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		ColisionAktif = true
		Global.player_text = "Press E to enter"

# ÇIKMA

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		ColisionAktif = false
		Global.player_text = ""

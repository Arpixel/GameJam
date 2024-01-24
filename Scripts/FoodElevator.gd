extends Node2D

var ColisionAktif = false
var KilitAcildi = false

# BAŞLANGIÇTA SIFIRLAMA

func _ready():
	$Area2D/Button.disabled = true
	ColisionAktif = false
	KilitAcildi = false
	Global.RedKey = false

func _process(_delta):
	
	# Turuncu Key İŞLEVLİLİK
	
	if Global.RedKey == true:
		$Area2D/Button.visible = true
		$Area2D/Button.disabled = false
	
	# IŞINLANMA
	
	if Input.is_action_just_pressed("E") and ColisionAktif and KilitAcildi == true:
		Global.Checkpoint()
		Global.Save_Game()
		get_tree().change_scene("res://Scenes/Level1.tscn")

# GİRME

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		ColisionAktif = true
	
		if KilitAcildi == false and Global.RedKey == true:
			Global.player_text = "Click The Lock"
	
		elif Global.RedKey == false:
			Global.player_text = "Find RedKey"

# ÇIKMA

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		ColisionAktif = false
		Global.player_text = ""

# BUTON

func _on_Button_pressed():
	KilitAcildi = true
	Global.player_text = "Press E to enter"
	$Area2D/Button.disabled = true

extends Node2D

var Hucre_Kapisi_Aktif = true
onready var Hucre_Kapisi = $CevreTasarim/Hucre_Kapisi/Area2D
func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("E") and Hucre_Kapisi_Aktif == true:
		Global.Checkpoint()
		Global.Save_Game()
		get_tree().change_scene("res://Hucre.tscn")


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Hucre_Kapisi_Aktif = true
		Global.player_text = "Press E to enter"


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		Hucre_Kapisi_Aktif = false
		Global.player_text = ""

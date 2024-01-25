extends Node2D

var Hucre_Kapisi_Aktif = true
onready var Hucre_Kapisi = $Room2Area

func _ready():
	Hucre_Kapisi = false
	Hucre_Kapisi_Aktif = false

func _process(_delta):
	if Input.is_action_just_pressed("E") and Hucre_Kapisi_Aktif == true:
		Global.alarm_system = false
		Global.Checkpoint()
		Global.Save_Game()
		get_tree().change_scene("res://Scenes/Room2Hademe.tscn")
		Global.ReloadPosition()
		Global.Checkpoint()
		Global.Save_Game()


func _on_Room2Area_body_entered(body):
	if body.name == "Player":
		Hucre_Kapisi_Aktif = true
		Global.player_text = "Press E to enter"

func _on_Room2Area_body_exited(body):
	if body.name == "Player":
		Hucre_Kapisi_Aktif = false
		Global.player_text = ""

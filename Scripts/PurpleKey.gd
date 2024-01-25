extends Area2D

# NORMAL ANAHTAR ( KEY ) KODU SAKIN KARIŞTIRMA!

var kaybol = false

# Kaybol değişkeni queue_free() tetikler

func _process(_delta):
	if Global.PurpleKey == true:
		queue_free()

# Eğer Area2D(Keycard) alanına Player girerse

func _on_Key_body_entered(body):
	if body.name == "Player":
		kaybol = true
		Global.PurpleKey = true
		Global.Save_Game()

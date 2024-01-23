extends Area2D

# DİJİTAL ANAHTAR ( KEYCARD ) KODU SAKIN KARIŞTIRMA!

var kaybol = false

# Kaybol değişkeni queue_free() tetikler

func _process(_delta):
	if kaybol == true:
		queue_free()

# Eğer Area2D(Keycard) alanına Player girerse

func _on_Keycard_body_entered(body):
	if body.name == "Player":
		kaybol = true
		Global.keycard = true

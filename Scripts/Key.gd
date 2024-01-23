extends Area2D

# NORMAL ANAHTAR ( KEY ) KODU SAKIN KARIŞTIRMA!


		

# Eğer Area2D(Keycard) alanına Player girerse

func _on_Key_body_entered(body):
	if body.name == "Player":
		Global.key = true
		queue_free()

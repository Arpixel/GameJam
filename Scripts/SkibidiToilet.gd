extends StaticBody2D

func _ready():
	$AnimatedSprite.play("normal")

func _on_Button_pressed():
	$AnimatedSprite.play("sufiskirt")
	$Button.visible = false

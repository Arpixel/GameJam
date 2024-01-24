extends Button

func _on_Button2_pressed():
	get_tree().quit()

func _ready():

func _on_Button3_pressed() -> void:
	$"../Button/Credits".visible = true

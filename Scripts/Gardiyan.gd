extends KinematicBody2D
var Aktif = false
var velocity = Vector2()
var dir = 0
var speed = 70
var Gravity = 15

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	GardianAI()
	_UpdateAnim()
	
func GardianAI():
	if Aktif == true:
		if Global.Player.global_position.x > position.x:
			dir = 1
		else:
			dir = 0
		if Global.Player.global_position.x < position.x:
			dir = -1

		velocity.x = speed *dir
		velocity.y += Gravity
		move_and_slide(velocity, Vector2.UP)

func _on_Alan_body_entered(body):
	if body.name == "Player":
		Aktif = true


func _on_Alan_body_exited(body):
	if body.name == "Player":
		Aktif = false


func _UpdateAnim():
	if dir == 1:
		pass
	if dir == 0:
		$AnimatedSprite.play("Idle")
	if dir == -1:
		pass

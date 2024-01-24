extends KinematicBody2D

func _process(_delta):
	if Global.finished == true:
		direction.x = 0.5

var direction = Vector2()
var velocity = Vector2()
var speed = 100
var gravity = 1000
var jump_strength = 220

func _ready():
	pass

func _physics_process(delta):
	update_movement(delta)
	player_animation()

func start_jump():
	velocity.y = -jump_strength

func update_movement(delta):
	velocity.x = direction.x * speed
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)

func player_animation():
	if is_on_floor():
		if direction.x != 0:
			$AnimatedSprite.flip_h = (direction.x < 0)
			$AnimatedSprite.play("Walk")
		else:
			$AnimatedSprite.play("Idle")

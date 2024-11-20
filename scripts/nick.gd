extends CharacterBody2D

@onready var anim2d: AnimatedSprite2D = $AnimatedSprite2D
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
	#	velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	#	velocity.y = JUMP_VELOCITY
		
	if (Input.is_action_pressed("moveleft")):
		velocity.x = -SPEED
		anim2d.play("left")
	elif (Input.is_action_pressed("moveright")):
		velocity.x = SPEED;
		anim2d.play("right");
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		anim2d.play("idle");

	move_and_slide()

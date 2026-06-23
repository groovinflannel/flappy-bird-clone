extends CharacterBody2D


const SPEED = 3.0
const MAX_SPEED = 5.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	velocity.x = SPEED

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and !is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Handle constant rightward movement
	velocity.x += SPEED
	if velocity.x == MAX_SPEED:
		velocity.x = SPEED
		velocity.x += SPEED

	move_and_slide()

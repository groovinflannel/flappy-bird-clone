extends CharacterBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

#var speed = 0.0
const MAX_SPEED = 5.0
const JUMP_VELOCITY = -400.0
var gravity = Vector2(0.0, 0.0)


func _ready() -> void:
	idle()

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += gravity * delta
		

	# Handle jump.
	if Input.is_action_just_pressed("flap") and !is_on_floor():
		gravity = Vector2(0.0, 980.0)
		#speed = 3.0
		velocity.y = JUMP_VELOCITY
		flapping()

	# Handle constant rightward movement
	#velocity.x += speed
	#if velocity.x == MAX_SPEED:
		#velocity.x = speed
		#velocity.x += speed

	move_and_slide()


func idle() -> void:
	animation_player.play("idle")


func flapping() -> void:
	animation_player.play("flapping")

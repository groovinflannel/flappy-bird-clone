extends CharacterBody2D

var speed = -215.0

func _physics_process(delta: float) -> void:
	
	velocity.x = speed
	move_and_slide()
	
	if global_position.x < -200:
		queue_free()
		print("Obstacle out of game area, deleted")

func _on_pipe_body_entered(body: Node2D) -> void:
	if body is Player:
		print("Player touched a pipe!")


func _on_score_area_body_entered(body: Node2D) -> void:
	if body is Player:
		print("Player scored!")

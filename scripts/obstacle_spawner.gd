extends Node2D

@onready var spawn_timer: Timer = $SpawnTimer

func _on_spawn_timer_timeout() -> void:
	print("Spawn obstacle.")

func start() -> void:
	spawn_timer.start()
	
	
func stop() -> void:
	spawn_timer.stop()

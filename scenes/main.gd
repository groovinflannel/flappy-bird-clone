extends Node2D

var pipe = preload("res://scenes/pipe.tscn")
var pipe_instance = pipe.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(pipe_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

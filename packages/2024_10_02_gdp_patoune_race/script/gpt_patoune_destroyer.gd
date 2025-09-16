extends Node3D

@export var rotate_speed: float = 90.0  # degrees per second

func _ready() -> void:
	$Area3D.body_entered.connect(_on_body_entered)

func _physics_process(delta: float) -> void:
	# Spin for effect
	rotate_y(deg_to_rad(rotate_speed) * delta)

func _on_body_entered(body: Node) -> void:
	if body is CharacterBody3D:
		print("Patoune collected by: ", body.name)
		queue_free()  # Remove the coin

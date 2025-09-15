extends Node3D

@export var rotation_active := true
@export var rotation_speed_degrees := 90.0
@export var rotation_axis := Vector3(0, 1, 0)


func _ready() -> void:
	
	var rand_angle = deg_to_rad(randf_range(0,360))
	rotate(rotation_axis.normalized(), rand_angle)

func _physics_process(delta: float) -> void:
	if rotation_active:
		var angle_rad = deg_to_rad(rotation_speed_degrees) * delta
		rotate(rotation_axis.normalized(), angle_rad)

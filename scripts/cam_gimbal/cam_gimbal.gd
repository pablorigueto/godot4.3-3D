extends Node3D

@onready var player = $"../Guardian"
var base_position = Vector3()
var base_rotation = Vector3()

func _ready() -> void:
	base_position = position
	base_rotation = rotation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = player.position

	if Input.is_action_pressed('cam_rotation_left'):
		rotation.y += 1.0 * delta
	
	if Input.is_action_pressed('cam_rotation_right'):
		rotation.y -= 1.0 * delta
		
	if Input.is_action_pressed('cam_gimbal_up'):
		rotation.y -= 1.0 * delta
		rotation.x -= 0.3 * delta
		
	if Input.is_action_pressed('cam_gimbal_down'):
		rotation.y += 1.0 * delta
		rotation.x += 0.3 * delta
		
	if Input.is_action_just_pressed("rotate_cam"):
		rotation_degrees.y += 90

		
		

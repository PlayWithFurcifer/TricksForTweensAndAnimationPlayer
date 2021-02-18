extends KinematicBody2D

var moveSpeed = 20.0

const FOOTPRINT_SCENE = preload("res://Trick #07/Footprint.tscn")

func _physics_process(delta):
	move_and_slide(Vector2.DOWN * moveSpeed, Vector2.UP)

func footstep(left):
	var footprint = FOOTPRINT_SCENE.instance()
	footprint.position = position
	footprint.position.y += 16
	if left:
		footprint.position.x -= 4
	else:
		footprint.position.x += 5
	
	get_parent().add_child(footprint)

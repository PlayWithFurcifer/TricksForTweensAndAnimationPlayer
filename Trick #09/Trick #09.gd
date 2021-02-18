extends Node2D

func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var animation = $AnimationPlayer.get_animation("MoveToCenter")
	for i in range(3):
		var pos = Vector2(rng.randf_range(0, 1000), rng.randf_range(0, 500))
		animation.track_set_key_value(0, i, pos)
	$AnimationPlayer.play("MoveToCenter")

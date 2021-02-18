extends Node2D

func _ready():
	$Tween.interpolate_property($Sprite.material, "shader_param/flash_state", 0, 1, 
		0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 0.5)
	$Tween.interpolate_property($Sprite.material, "shader_param/flash_state", 1, 0,
		0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 1.5)
	$Tween.start()

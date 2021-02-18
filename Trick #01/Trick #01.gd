extends Node2D

func _ready():
	$Tween.interpolate_property($Sprite.material, "shader_param/flash_state", 0, 1, 5)
	$Tween.start()

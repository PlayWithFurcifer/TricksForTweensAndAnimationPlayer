extends Node2D

func _ready():
	$Tween.interpolate_property($Sprite, "position", null, OS.get_window_size() / 2, 1.0)
	$Tween.start()

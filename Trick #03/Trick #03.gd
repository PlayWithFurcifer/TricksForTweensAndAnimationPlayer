extends Node2D

func _ready():
	$Tween.interpolate_property($Sprite, "scale:x", 1, 0.5,
		0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 0.5)
	$Tween.interpolate_property($Sprite, "scale:x", 0.5, 1,
		0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 1.5)
	$Tween.start()

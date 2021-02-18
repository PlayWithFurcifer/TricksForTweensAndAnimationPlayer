extends Node2D

onready var animationPlayer = $AnimationPlayer

func _ready():
	$Label.text = "This is a very very very long text with lots of letters."
	animationPlayer.playback_speed = 100 / $Label.get_font("font").get_string_size($Label.text).x
	animationPlayer.play("ShowText")
	yield(animationPlayer, "animation_finished")
	$Label.text = "This. Short."
	animationPlayer.playback_speed = 100 / $Label.get_font("font").get_string_size($Label.text).x
	animationPlayer.play("ShowText")

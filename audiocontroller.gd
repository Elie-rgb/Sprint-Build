extends Node2D

@export var mute: bool = false

func _ready():
	if not mute:
		play_music()

func play_menu():
	if not mute:
		$menu.play()
		
func play_music():
	if not mute:
		$bg_music.play()

func play_walk() -> void:
	if not mute:
		$walk.play()
		
func play_mobdead() -> void:
	if not mute:
		$mobdead.play()

func play_end_level() -> void:
	if not mute:
		$Music.stop()
		$endLevel.play()
		
		

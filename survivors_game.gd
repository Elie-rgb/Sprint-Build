extends Node2D

func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout() -> void:
	spawn_mob()


func _on_player_health_depleted() -> void:
	%Gameover.visible = true
	get_tree().paused = true
	
	await get_tree().create_timer(3.0, true).timeout
	
	get_tree().paused = false
	get_tree().change_scene_to_file("res://main_menu.tscn")

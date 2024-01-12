extends Area2D

func _input(event):
	if get_overlapping_bodies().size() > 0:
		get_tree().reload_current_scene()

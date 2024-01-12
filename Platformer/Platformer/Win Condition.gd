extends Area2D

@export var sceneCamera: Camera2D

@onready var playerNode = get_node("../Player")

func _input(event):
	if get_overlapping_bodies().size() > 0:
		playerNode.canMove = false
		sceneCamera.make_current()

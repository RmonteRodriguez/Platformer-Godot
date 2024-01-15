extends StaticBody2D

@export var platform: StaticBody2D
@export var point1Node: Node2D
@export var point2Node: Node2D

@export var point1 = Vector2(0,0)
@export var point2 = Vector2(0,0)


var time = 0
var timeDirection = 1
var moveDuration = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#var screenSize = get_viewport().get_visible_rect().size
	#point1 = Vector2(screenSize.x * 0.1, screenSize.y * 0.6)
	#point2 = Vector2(screenSize.x - (screenSize.x * 0.1), screenSize.y * 0.6)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		# Flip the direction of how time gets added
	# This ensures it moves back to its initial position
	if (time > moveDuration or time < 0):
		timeDirection *= -1

	# delta is how long it takes to complete a frame.
	time += delta * timeDirection
	var t = time / moveDuration

	platform.position = lerp(point1Node.position,point2Node.position, t)



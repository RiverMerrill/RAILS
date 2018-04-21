extends KinematicBody2D

const UP = Vector2(0,-1)

var motion = Vector2()

func _process(delta):
	motion.y += 20
	if Input.is_action_pressed("ui_right"):
		motion.x = 250
	elif Input.is_action_pressed("ui_left"):
		motion.x = -250
	else:
		motion.x = 0
	if is_on_floor():
		motion.y = 20
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -600
	motion = move_and_slide(motion, UP)
	pass



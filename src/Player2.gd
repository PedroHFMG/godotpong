extends KinematicBody2D

var speed: = 790

func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("p2_up"):
		direction.y += -1
		
	if Input.is_action_pressed("p2_down"):
		direction.y += 1
		
	move_and_slide(direction * speed)


extends KinematicBody2D

export var speed: = 790

func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("p1_up"):
		direction.y += -1
		
	if Input.is_action_pressed("p1_down"):
		direction.y += 1
		
	move_and_slide(direction * speed)

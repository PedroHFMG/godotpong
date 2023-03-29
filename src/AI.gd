extends KinematicBody2D

var speed: = 365
var ball

func _ready() -> void:
	ball = get_parent().find_node("Ball")

func _physics_process(delta: float) -> void:
	#var collisionspeedincrease = move_and_collide(Vector2(0, opponent_move()) * speed * delta)
	#if collisionspeedincrease:
		#speed = speed + 1
		
	move_and_slide(Vector2(0, opponent_move()) * speed)


func opponent_move():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0

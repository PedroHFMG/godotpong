extends KinematicBody2D

var speed = 600
var velocity = Vector2.ZERO

func _ready() -> void:
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.5,0.5][randi() % 2]
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * speed * delta)
	
	if collision:
		velocity = velocity.bounce(collision.normal)
		$"../MenuBallStereo".position = position
		$"../MenuBallStereo".play()

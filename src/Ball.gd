extends KinematicBody2D

var speed: int
var velocity = Vector2.ZERO

func _ready() -> void:
	yield(get_tree().create_timer(2.0), "timeout")
	ball_normal()
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * speed * delta)
	
	if collision:
		velocity = velocity.bounce(collision.normal.rotated(rand_range(0.125, -0.125)))
		$BallPlucStereo.position = position
		$BallPlucStereo.play()
		speed = speed + 3
		
func stopball():
	speed = 0
	
func ball_normal():
	speed = Ball.speed
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.35,0.35][randi() % 2]

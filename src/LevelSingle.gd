extends Node2D

var p_score = 0
var e_score = 0

func _ready() -> void:
	get_node("Countdown/Label").visible = false
	pontuation_label()

func _process(delta: float) -> void:
	$Score/ScL.text = str(p_score)
	$Score/ScR.text = str(e_score)
	$Countdown/Label.text = str(int($Timer.time_left) + 1)
		
	if $Player.position.x != 32:
		$Player.position.x = 32
		
	if $Player2.position.x != 1248:
		$Player2.position.x = 1248
	
func _on_AreaR_body_entered(body: Node) -> void:
	p_score += 1
	score_process_p1()

func _on_AreaL_body_entered(body: Node) -> void:
	e_score += 1
	score_process_p2()

func _on_Timer_timeout() -> void:
	get_node("Ball").ball_normal()
	$Countdown/Label.visible = false

func pontuation_label():
	$HintLabel/WinCondition.visible = true
	yield(get_tree().create_timer(2.0), "timeout")
	$HintLabel/WinCondition.visible = false
	
func score_process_p1():
	if p_score < 3:
		print('hello below 3')
		pontuation_label()
		$Ball.position = Vector2(640, 360)
		$Countdown/Label.visible = true
		get_node("Ball").stopball()
		$CountdownSound.play()
		$Timer.start()
	else:
		get_tree().change_scene("res://src/P1EndScreen.tscn")

func score_process_p2():
	if e_score < 3:
		print('hello below 3')
		pontuation_label()
		$Ball.position = Vector2(640, 360)
		$Countdown/Label.visible = true
		get_node("Ball").stopball()
		$CountdownSound.play()
		$Timer.start()
	else:
		get_tree().change_scene("res://src/P2EndScreen.tscn")

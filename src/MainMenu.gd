extends Control

func _on_1P_pressed() -> void:
	MenuAutoload.play()
	$ContainerMenu.hide()
	$ContainerMenu2.show()
	
func _on_Slow_pressed() -> void:
	MenuAutoload.play()
	$"/root/Ball".speed = 500
	get_tree().change_scene("res://src/LevelSingle.tscn")
	
func _on_Normal_pressed() -> void:
	MenuAutoload.play()
	$"/root/Ball".speed = 650
	get_tree().change_scene("res://src/LevelSingle.tscn")

func _on_Fast_pressed() -> void:
	MenuAutoload.play()
	$"/root/Ball".speed = 750
	get_tree().change_scene("res://src/LevelSingle.tscn")
	
func _on_2P_pressed() -> void:
	MenuAutoload.play()
	$"/root/Ball".speed = 600
	get_tree().change_scene("res://src/LevelMulti.tscn")
	
func _on_Controls_pressed() -> void:
	MenuAutoload.play()
	$ContainerMenu.hide()
	$Label.hide()
	$Controls.show()
	yield(get_tree().create_timer(2.0), "timeout")
	$Controls.hide()
	$Label.show()
	$ContainerMenu.show()
	
func _on_Back_pressed() -> void:
	MenuAutoload.play()
	$ContainerMenu2.hide()
	$ContainerMenu.show()

func _on_Quit_pressed() -> void:
	get_tree().quit()

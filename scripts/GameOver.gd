extends Control

var pode = false

func _ready():
	set_process_input(true)

func _input(event):
	if event.type == InputEvent.SCREEN_TOUCH and pode:
		get_tree().reload_current_scene()
func start():
	show()
	get_node("AnimationPlayer").play("gameOver")
	get_node("Timer").start()

func _on_Timer_timeout():
	pode = true
	get_node("Label 2").show()

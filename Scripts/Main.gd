extends Node3D

@onready var final_menu : = $FinalMenu
@onready var player : =$Player

var play_time : = 0.0

func _process(delta : float) -> void:
	play_time += delta

func _on_level_1_level_completed():
	var total_play_time = play_time
	player.queue_free()
	final_menu.initialize(total_play_time)

func _on_final_menu_retried():
	get_tree().reload_current_scene

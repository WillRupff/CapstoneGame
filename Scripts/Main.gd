extends Node3D

@onready var final_menu : = $FinalMenu
@onready var player : =$Player

@onready var game_start_time = Time.get_ticks_msec()

func get_time():
	var current_time = Time.get_ticks_msec() - game_start_time
	var minutes = current_time/1000/60
	var seconds = current_time/1000%60
	var msec = current_time%1000/10
	if minutes < 10:
		if minutes == 0:
			minutes = "00"
		else:
			minutes = "0"+str(minutes)
	if seconds < 10:
		if seconds == 0:
			seconds = "00"
		else:
			seconds = "0"+str(seconds)
	if msec < 10:
		if msec == 0:
			msec = "00"
		else:
			msec = "0"+str(msec)
	return str(minutes)+":"+str(seconds)+":"+str(msec)

var play_time : = 0.0

func _process(delta : float) -> void:
	play_time += delta
	$CanvasLayer/Control/Label.text = get_time()

func _on_level_1_level_completed():
	var total_play_time = play_time
	player.queue_free()
	final_menu.initialize(total_play_time)
	$CanvasLayer.hide()

func _on_final_menu_retried():
	get_tree().reload_current_scene()


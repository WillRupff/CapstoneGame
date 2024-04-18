extends Control  # Change Control to the type of your parent node if different

# Preload your game scene here
var game_scene_path = "res://Non-Level_Scenes/Main.tscn"

var instructions_scene_path = "res://UI Scenes/Instructions.tscn"

func _on_start_button_pressed():
	var new_scene = load(game_scene_path).instantiate()
	var current_scene = get_tree().current_scene
	get_tree().get_root().add_child(new_scene)
	get_tree().current_scene = new_scene
	current_scene.queue_free()


func _on_instructions_button_pressed():
	var new_instructions_scene = load (instructions_scene_path).instantiate()
	var current_scene = get_tree().current_scene
	get_tree().get_root().add_child(new_instructions_scene)
	get_tree().current_scene = new_instructions_scene
	current_scene.queue_free()
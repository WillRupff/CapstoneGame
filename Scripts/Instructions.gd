extends Control

var openingmenu_scene_path = "res://UI Scenes/OpeningMenu.tscn"

func _on_button_pressed():
	var openingmenu_scene = load(openingmenu_scene_path).instantiate()
	var current_scene = get_tree().current_scene
	get_tree().get_root().add_child(openingmenu_scene)
	get_tree().current_scene = openingmenu_scene
	current_scene.queue_free()

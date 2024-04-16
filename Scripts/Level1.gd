extends Node3D

signal level_completed()

func _on_objective_body_entered(body):
	if body is CharacterBody3D: 
		emit_signal("level_completed")

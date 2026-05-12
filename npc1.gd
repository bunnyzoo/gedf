extends Area2D

@export var chau: AnimationPlayer
var dentro = false
var nomover = false

func _on_body_shape_entered(_body_rid, _body, _body_shape_index, _local_shape_index):
	dentro = true

func _on_body_shape_exited(_body_rid, _body, _body_shape_index, _local_shape_index):
	dentro = false

func _process(_delta):
	if dentro:
		$Icon2.show()
		if Input.is_action_just_pressed("saltocept"):
			nomover = true
			chau.play("chau")
			await chau.animation_finished
			get_tree().change_scene_to_file("res://escenas/level_test.tscn")

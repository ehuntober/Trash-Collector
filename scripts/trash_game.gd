extends Node2D

var asteriod = preload("res://scenes/enemy.tscn")

func _ready():
	randomize()

func _on_timer_timeout():
	var a = asteriod.instantiate()
	#a.position = self.position
	a.position.x = randi_range(20,180)
	a.position.y = randi_range(-50,-150)
	get_parent().add_child(a)

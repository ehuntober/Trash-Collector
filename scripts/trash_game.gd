#extends Node2D
#
#
##func _ready():
	##spawn_mob()
	##spawn_mob()
	##spawn_mob()
	##spawn_mob()
	##spawn_mob()
#
##func spawn_mob():
	##var new_mob = preload("res://scenes/enemy.tscn").instantiate()
	##%PathFollow2D.progress_ratio = randf()
	##new_mob.global_position = %PathFollow2D.global_position
	##add_child(new_mob)
#
#func _on_timer_timeout():
	#spawn_mob()
	
extends Node2D

@onready var player = get_node("/root/TrashGame/Player")

func spawn_mob():
	var new_mob = preload("res://scenes/enemy.tscn").instantiate()
	new_mob.global_position = Vector2(randf_range(0, get_viewport_rect().size.x), randf_range(0, get_viewport_rect().size.y))
	add_child(new_mob)

func _on_timer_timeout():
	spawn_mob()

func _process(delta):
	# Check for player position and perform mob behavior
	for child in get_children():
		# Calculate direction to the player
		var direction_to_player = (player.global_position - child.global_position).normalized()
		
		# Move the mob towards the player
		child.global_position += direction_to_player * 100 * delta

		# You may want to add conditions for attacking the player here



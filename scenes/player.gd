extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = direction * 200
	move_and_slide()
	
	
	if velocity.length() > 0.0:
		#get_node("$Player_move").play_walk_animation()
		anim.play("Idle")
	#else:
		#get_node("HappyBoo").play_idle_animation()
		
		
		
		
		
		
		
		
		
		
		
		
		
		


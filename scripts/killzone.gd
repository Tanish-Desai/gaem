extends Area2D
@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
#	TODO: find a relation between time_scale and wait_time 	to change both with only one const val.
	Engine.time_scale = 0.3
	
#	adds a mario-like drop effect on the player body
	body.get_node("CollisionShape2D").queue_free()
	timer.wait_time = 0.2
	timer.start()
	


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()

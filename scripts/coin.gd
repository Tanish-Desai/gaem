extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	#print("+1 coin!")
	animation_player.play("pickup_anim")
#	TODO: try playing pickup_sound using script alone, instead of the workaround

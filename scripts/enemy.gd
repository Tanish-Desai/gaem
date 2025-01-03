extends Node2D

const SPEED = 60
var dirn=1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var player: AnimatedSprite2D = $"../Player/AnimatedSprite2D"
@onready var killzone: Area2D = $killzone

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position.x+=1
	if ray_cast_right.is_colliding():
		dirn=-1
		animated_sprite_2d.flip_h=true
	if ray_cast_left.is_colliding():
		dirn=1
		animated_sprite_2d.flip_h=false
	position.x += dirn*SPEED*delta
	

	if killzone.is_hurt:
		print("EEURRGH!")
#		TODO: Try to find an altmethod so that this doesn't run 60 times
		player.play("hurt")

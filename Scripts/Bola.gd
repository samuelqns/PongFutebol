extends KinematicBody2D

export var velocidade = Vector2(-200, 0)

func _physics_process(delta):
	var collision_info = move_and_collide(velocidade * delta)
	
	if collision_info:
		velocidade = velocidade.bounce(collision_info.normal)
	pass

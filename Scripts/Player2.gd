extends KinematicBody2D

var velocidade = Vector2.ZERO

func _physics_process(delta):
	velocidade.x = Input.get_action_strength("player2_right") - Input.get_action_strength("player2_left")
	velocidade.y = Input.get_action_strength("player2_down") - Input.get_action_strength("player2_up")
	move_and_slide(velocidade * 150)
	trocaDirecao(velocidade)
	pass 

func trocaDirecao(vel):
	if (vel.x == 1):
		$"AnimatedSprite".set_flip_h(false)
	if (vel.x == -1):
		$"AnimatedSprite".set_flip_h(true)
	pass

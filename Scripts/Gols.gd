extends Node2D

func _ready():
	pass # Replace with function body.

func _on_body_entered(body):
	if body.name == 'Bola':
		body.position = Vector2(830, 450)
		
		if $".".name == 'GolEsquerda':
			body.velocidade = Vector2(200, 0)
		
		if $".".name == 'GolDireita':
			body.velocidade = Vector2(-200, 0)
	pass

extends KinematicBody2D

var velocidade = Vector2.ZERO

func _physics_process(delta):
	velocidade.x = Input.get_action_raw_strength("direita") - Input.get_action_raw_strength("esquerda")
	velocidade.y = Input.get_action_raw_strength("cima") - Input.get_action_raw_strength("baixo")
	move_and_slide(velocidade*200)
	pass

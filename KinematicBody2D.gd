extends KinematicBody2D
var velocidade = Vector2.ZERO

func _physics_process(delta):
	velocidade.x = Input.get_action_raw_strength("ui_right") - Input.get_action_raw_strength("ui_left")
	move_and_slide(velocidade*150)
	pass

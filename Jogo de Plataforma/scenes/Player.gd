extends CharacterBody2D

@onready var sprite = $Sprite2D

var SPEED = 300.0
var GRAVITY = 980
var JUMP_VELOCITY = -480

func _ready():
	pass
	
func _process(delta):
	#Gravidade puxando para baixo
	velocity.y += GRAVITY * delta
	
	#Pulo
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	#Movimentação Horizontal
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED
	
	move_and_slide()
	

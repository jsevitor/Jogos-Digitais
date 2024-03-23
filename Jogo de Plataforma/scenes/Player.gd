extends CharacterBody2D

@onready var sprite = $Sprite2D
@onready var animation = $AnimationPlayer

var SPEED = 300.0
var GRAVITY = 980
@export var JUMP_VELOCITY = -480
@export var cloth_color: Color

func _ready():
	pass
	
func _process(delta):
	#Gravidade puxando para baixo
	velocity.y += GRAVITY * delta
	
	#Pulo
	# is_action_just_pressed captura a tecla uma ÚNICA vez
	# is_on_floor informa se o elemento está tocando o chão
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	#Movimentação Horizontal
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED
	
	# movimenta o personagem de acordo com os valores do velocity
	move_and_slide()
	
	# Virar/Espelhar o player
	if direction < 0:
		sprite.flip_h = true
	elif direction > 0:
		sprite.flip_h = false
	
	# Animações
	if is_on_floor(): # Animações de chão
		if velocity.x == 0:
			animation.play("idle")
		else:
			animation.play("run")
	else: #Animações de ar
		if velocity.y < 0:
			animation.play("jump")
		else:
			animation.play("fall") 
		
	
	
	

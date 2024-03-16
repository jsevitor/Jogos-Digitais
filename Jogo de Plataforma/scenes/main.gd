extends Node2D

var pos_x = 64
var pos_y: int = 64

var dir = 1

var tela_x = 1152
var tela_y = 648

@onready var sprite_2d = $Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	sprite_2d.global_position.x = pos_x
	sprite_2d.global_position.y = pos_y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if dir == 1 and sprite_2d.global_position.x > tela_x - 64:
		dir = 2
	elif dir == 2 and sprite_2d.global_position.y > tela_y - 64:
		dir = 3
	elif dir == 3 and sprite_2d.global_position.x < 0 + 64:
		dir = 4
	elif dir == 4 and sprite_2d.global_position.y < 0 + 64:
		dir = 1
		
		
	if dir == 1:
		sprite_2d.global_position.x += 10
	elif dir == 2:
		sprite_2d.global_position.y +=10
	elif dir == 3:
		sprite_2d.global_position.x -= 10
	elif dir == 4:
		sprite_2d.global_position.y -= 10
	

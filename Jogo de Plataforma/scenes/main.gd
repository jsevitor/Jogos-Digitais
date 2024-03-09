extends Node2D

var pos_x = 100
var pos_y: int = 130

@onready var sprite_2d = $Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	sprite_2d.global_position.x = pos_x
	sprite_2d.global_position.y = pos_y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sprite_2d.global_position.x += 1
	sprite_2d.global_position.y += 1

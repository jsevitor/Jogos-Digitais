extends Node2D


func _on_area_2d_area_entered(area):
	print("COMEU FRUTINHA")
	queue_free()

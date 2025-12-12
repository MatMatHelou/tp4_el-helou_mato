extends Node

@onready var points_label: Label = $"../UI/Panel/PointsLabel"
@onready var game_manager: Node = %GameManager

var points = 0

func add_point():
	points += 1
	print(points)
	game_manager.add_points()
	points_label.text = "Points: " + str(points)

extends Node


# Called when the node enters the scene tree for the first time.
var total_coins: int = 0

func coin_collected(value: int):
	total_coins += value
	EventController.emit_signal("coin_collected", total_coins)

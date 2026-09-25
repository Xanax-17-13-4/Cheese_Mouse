extends Node2D

@onready var game_manager= %Game_Manager


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_entered(body) -> void:
	if body.name == "Mouse":
		var tween = create_tween()
		
		tween.tween_property(self, "position",position + Vector2(0,-20), 0.3)
		tween.tween_property(self, "modulate:a", 0.0, 0.3)
		game_manager.add_cheese()
		tween.tween_callback(self.queue_free)

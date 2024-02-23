extends CanvasLayer
signal start_game

func show_message(text):
	$Label2.text = text
	$Label2.show()
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$Button.hide()
	start_game.emit()
	pass # Replace with function body.

func update_score(score):
	$Label.text = str(score)
	
	
	
	
	

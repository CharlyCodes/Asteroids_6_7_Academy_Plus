extends Node
var score
@export var Mob_scene: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
 
func _process(_delta):
	pass

func new_game():
	score = 0
	$Player.start($Marker2D.position)
	$StartTimer.start()
	$HUD.show_message(" ")
	pass


func _on_start_timer_timeout():
	$ScoreTimer.start()
	$EnemyTimer.start()
	pass # Replace with function body.


func _on_score_timer_timeout():
	score = score + 1
	print(score)
	$HUD.update_score(score)
	pass # Replace with function body.


#Esto es un comentario




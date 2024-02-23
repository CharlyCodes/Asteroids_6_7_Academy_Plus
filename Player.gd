extends Area2D

var speed = 400
var screen_size 

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x = velocity.x + 1 	#Newbies
	if Input.is_action_pressed("ui_left"):
		velocity.x = velocity.x - 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = velocity.y - 1
	if Input.is_action_pressed("ui_down"):
		velocity.y = velocity.y + 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta
	pass

func start(pos):
	position = pos
	show()
	













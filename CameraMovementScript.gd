extends Camera3D

var mouseSens = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event is InputEventMouseMotion:
		my_rotate_x(deg_to_rad(event.relative.y * mouseSens))
		my_rotate_y(deg_to_rad(-event.relative.x * mouseSens))

func my_rotate_x(angle):
	rotation_degrees.x += angle
	rotation_degrees.x = clamp(rotation.x, -90, 90)
	
func my_rotate_y(angle):
	rotation_degrees.y += angle

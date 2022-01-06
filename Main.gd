extends Spatial


onready var sensor = Sensor.new()

func _ready():
	sensor._ready()


func _physics_process(delta):
	var tmp = sensor.get_angles()
	if tmp != null:
		$Paddle.rotation = Vector3(tmp[0], tmp[2], -tmp[1])
func _process(delta):
	pass
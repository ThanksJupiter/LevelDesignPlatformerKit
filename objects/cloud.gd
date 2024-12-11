extends Node3D

var time = 0.0

var random_number = RandomNumberGenerator.new()

var random_velocity:float
var random_time:float

@export var range_min_amplitude : float = 0.1
@export var range_max_amplitude : float = 2.0
@export var range_min_vel : float = 0.1
@export var range_max_vel : float = 2.0

func _ready():

	random_velocity = random_number.randf_range(range_min_vel,range_max_vel)
	random_time = random_number.randf_range(range_min_amplitude,range_max_amplitude)

func _process(delta):

	position.y += (cos(time * random_time) * random_velocity) * delta # Sine movement

	time += delta

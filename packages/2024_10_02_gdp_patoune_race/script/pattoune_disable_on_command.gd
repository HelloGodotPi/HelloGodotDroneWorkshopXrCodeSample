extends Node


@export var what_to_destroy:Node 

func request_to_disable():
	if what_to_destroy:
		what_to_destroy.queue_free()
	

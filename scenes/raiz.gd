extends Node2D

var tween;

func _ready():
	tween = create_tween()
	tween.tween_property($Kyle, "position", $Graph/V1.global_position, 0.5)

func _on_line_edit_text_changed(new_text):
	tween = create_tween()
	if (new_text == ""):
		tween.tween_property($Kyle, "position", $Graph/V1.global_position, 0.7)
	if (new_text == "a"):
		tween.tween_property($Kyle, "position", $Graph/V2.global_position, 0.7)
	if (new_text == "ab"):
		tween.tween_property($Kyle, "position", $Graph/V3.global_position, 0.7)
	if (new_text == "abc"):
		tween.tween_property($Kyle, "position", $Graph/V4.global_position, 0.7)

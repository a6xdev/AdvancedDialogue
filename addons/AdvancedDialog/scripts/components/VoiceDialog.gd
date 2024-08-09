@tool
extends AudioStreamPlayer
class_name AdvancedDialog

@export var dialogs: Array[DialogResource] = []
var default_language: String = ""

var subtitle

func _ready():
	var DialogLabel = preload("res://addons/AdvancedDialog/components/DialogLabel.tscn")
	subtitle = DialogLabel.instantiate()
	add_child(subtitle)
	subtitle.visible = false
	connect("finished", Callable(self, "_on_finished"))

func play_dialog():
	var current_language = get_current_language()

	var found = false
	for dialog in dialogs:
		if dialog.language == current_language:
			if dialog.audio:
				stream = dialog.audio
				subtitle.text = dialog.subtitles
				subtitle.visible = true
				play()
				found = true
				break

	if not found:
		print("No matching languages ​​found")
		for dialog in dialogs:
			if dialog.language == default_language:
				if dialog.audio:
					stream = dialog.audio
					subtitle.text = dialog.subtitles
					subtitle.visible = true
					play()
					break

func get_current_language() -> String:
	var current_locale = TranslationServer.get_locale()
	return current_locale if current_locale in get_available_languages() else default_language

func get_available_languages() -> Array:
	var available_languages = []
	for dialog in dialogs:
		if dialog.language not in available_languages:
			available_languages.append(dialog.language)
	return available_languages

func _on_finished():
	subtitle.visible = false

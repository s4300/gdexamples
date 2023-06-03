# From https://ask.godotengine.org/117888/how-do-i-read-a-json-file?show=118145#a118145,
# and updated to Godot 4.x by s4300

func parse_json(text):
	return JSON.parse_string(text)

func read_json_file(file_path):
	var file = FileAccess.open(file_path, FileAccess.READ)
	var content_as_text = file.get_as_text()
	var content_as_dictionary = parse_json(content_as_text)
	return content_as_dictionary

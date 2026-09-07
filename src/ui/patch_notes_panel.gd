extends CanvasLayer

signal closed

var _updates: Array = []


func setup(updates: Array) -> void:
	_updates = updates
	visible = false
	_build_ui()


func open_panel() -> void:
	visible = true


func close_panel() -> void:
	visible = false
	closed.emit()


func _build_ui() -> void:
	var root := Control.new()
	root.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(root)

	var shade := ColorRect.new()
	shade.set_anchors_preset(Control.PRESET_FULL_RECT)
	shade.color = Color(0.01, 0.015, 0.015, 0.72)
	root.add_child(shade)

	var center := CenterContainer.new()
	center.set_anchors_preset(Control.PRESET_FULL_RECT)
	root.add_child(center)

	var panel := PanelContainer.new()
	panel.custom_minimum_size = Vector2(820, 560)
	center.add_child(panel)

	var box := VBoxContainer.new()
	box.add_theme_constant_override("separation", 12)
	panel.add_child(box)

	var header := HBoxContainer.new()
	header.add_theme_constant_override("separation", 12)
	box.add_child(header)

	var title := Label.new()
	title.text = "Patch Notes"
	title.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	title.add_theme_font_size_override("font_size", 34)
	header.add_child(title)

	var close_button := Button.new()
	close_button.text = "Fermer"
	close_button.custom_minimum_size = Vector2(120, 42)
	close_button.pressed.connect(close_panel)
	header.add_child(close_button)

	var scroll := ScrollContainer.new()
	scroll.custom_minimum_size = Vector2(760, 440)
	scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	box.add_child(scroll)

	var notes := RichTextLabel.new()
	notes.name = "PatchNotesText"
	notes.bbcode_enabled = true
	notes.fit_content = true
	notes.scroll_active = false
	notes.selection_enabled = true
	notes.custom_minimum_size = Vector2(740, 1200)
	notes.text = _build_patch_notes_text()
	scroll.add_child(notes)


func _build_patch_notes_text() -> String:
	var text := ""
	for update in _updates:
		if typeof(update) != TYPE_DICTIONARY:
			continue
		text += "[font_size=24][b]%s - %s[/b][/font_size]\n" % [String(update.get("version", "?")), String(update.get("title", "Mise à jour"))]
		text += "[color=#c8d8a8]%s[/color]\n" % String(update.get("date", ""))
		text += "%s\n" % String(update.get("description", ""))
		text += _format_section("Ajouts", update.get("added", []))
		text += _format_section("Modifications", update.get("changed", []))
		text += _format_section("Retraits", update.get("removed", []))
		text += "\n"
	return text


func _format_section(title: String, items: Array) -> String:
	var text := "[b]%s[/b]\n" % title
	if items.is_empty():
		return text + "- Aucun.\n"
	for item in items:
		text += "- %s\n" % String(item)
	return text

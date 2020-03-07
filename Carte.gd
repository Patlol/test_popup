extends Node2D


func _ready() -> void:
	$Label.hide()


"""
Signal envoyé par ButtonTour
"""
func _on_ButtonTour_pressed() -> void:
	$PopupFinTour.popup_centered(Vector2(600, 60))
	$PopupFinTour.set_exclusive(true)
	var bb_texte = "[center]Vous venez de terminer le tour 1" +\
	 ".\nVous devez attendre que les autres joueurs en aient fait autant.[/center]"
	$PopupFinTour/RichTextLabel.set_bbcode(bb_texte)
	print($PopupFinTour.is_exclusive())
	yield(get_tree().create_timer(10), "timeout")

	bb_texte = "[center]Aucune bagarre n'a éclaté dans les bistrots mal famés des ports." +\
	 "\nLe tour 2 peux commencer[/center]"
	$PopupFinTour/RichTextLabel.set_bbcode(bb_texte)
	yield(get_tree().create_timer(5), "timeout")
	$PopupFinTour.hide()




func _on_Button_pressed() -> void:
	$Label.show()
	yield(get_tree().create_timer(4), "timeout")
	$Label.hide()

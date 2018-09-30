extends VBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

signal generate_code


func _on_GenererButton_up():
    if ($MarginContainer2/GridContainer/Empreinte/EmpreinteEdit.text == "3"):
        emit_signal("generate_code")


func _on_EmpreinteEdit_text_changed(new_text):
    if ($MarginContainer2/GridContainer/Empreinte/EmpreinteEdit.text == "3"):
        $MarginContainer4/GenererButton.visible = true
    else:
        $MarginContainer4/GenererButton.visible = false

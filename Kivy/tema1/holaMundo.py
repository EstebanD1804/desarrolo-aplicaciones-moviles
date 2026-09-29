from kivy.app import App
from kivy.uix.button import Button
class holaMundo(App):
    def build(self):
        return Button(text="Hola Mundo, en Kivy!")
holaMundo().run()
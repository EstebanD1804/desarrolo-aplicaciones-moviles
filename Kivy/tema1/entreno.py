from kivy.app import App
from kivy.uix.label import Label

class entreno(App):
    def build(self):
        return Label(text="Hola, Mundo!")

entreno().run()
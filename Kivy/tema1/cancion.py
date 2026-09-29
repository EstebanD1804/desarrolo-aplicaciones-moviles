from kivy.app import App
from kivy.uix.gridlayout import GridLayout
from kivy.uix.button import Button
from kivy.core.window import Window
from kivy.core.audio import SoundLoader

class LoginScreen(GridLayout):
    def __init__(self, **kwargs):
        super(LoginScreen, self).__init__(**kwargs)
        Window.size = (300, 200) # Establece el tamaño de la pantalla en el móvil
        self.cols = 1 #Indica usar una columna en el móvil

        self.btn_validar = Button(text='Iniciar Audio', on_press=self.validar, size_hint=(.7,.7))
        self.add_widget(self.btn_validar)
        self.btn_cancel = Button(text='Cancelar', on_press=self.cancelar, size_hint=(.7,.7))
        self.add_widget(self.btn_cancel)

    def validar(self, instance):
        sound = SoundLoader.load('corina_radiators.mp3')
        if sound:
            print("Sound found at %s" % sound.source)
            print("Sound is %.3f seconds" % sound.length)
            sound.play()

    def cancelar(self, instance):
        Cancion().stop()

class Cancion(App):
    def build(self):
        return LoginScreen()

if __name__ == '__main__':
    Cancion().run()
from kivy.app import App
from kivy.core.window import Window
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button


Window.size = (380, 420)

fuente = 'Times New Roman'
tamano_texto = 24
color_titulo = (0.78, 0, 0.95, 1)


class ConversorTemperatura(BoxLayout):
    #Interfaz principal del conversor de temperatura.

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        self.orientation = 'vertical'
        self.padding = 20
        self.spacing = 10

        self.add_widget(
            Label(
                text='Conversor de temperatura',
                font_size=35,
                font_name=fuente,
                color=color_titulo
            )
        )

        self.add_widget(
            Label(
                text='Escribe una temperatura:',
                font_name=fuente,
                font_size=tamano_texto
            )
        )

        self.entrada = TextInput(
            hint_text='Ejemplo: 25',
            multiline=False,
            size_hint_y=None,
            height=50
        )
        self.add_widget(self.entrada)

        contenedor_botones = BoxLayout(
            orientation='horizontal',
            spacing=10,
            size_hint_y=None,
            height=50
        )

        boton_celsius = self.crear_boton(
            'Celsius a Fahrenheit',
            self.convertir_celsius
        )
        boton_fahrenheit = self.crear_boton(
            'Fahrenheit a Celsius',
            self.convertir_fahrenheit
        )

        contenedor_botones.add_widget(boton_celsius)
        contenedor_botones.add_widget(boton_fahrenheit)
        self.add_widget(contenedor_botones)

        self.resultado = Label(
            text='El resultado aparecerá aquí',
            font_name=fuente,
            font_size=tamano_texto
        )
        self.add_widget(self.resultado)

        boton_limpiar = self.crear_boton(
            'Limpiar',
            self.limpiar,
            size_hint_y=None,
            height=50
        )
        self.add_widget(boton_limpiar)

    def crear_boton(self, texto, accion, **kwargs):
        #Crea un botón con el estilo base de la aplicación.
        boton = Button(
            text=texto,
            font_name=fuente,
            font_size=tamano_texto,
            **kwargs
        )
        boton.bind(on_press=accion)
        return boton

    def convertir_celsius(self, _instance):
        #Convierte el valor ingresado de Celsius a Fahrenheit.
        try:
            celsius = float(self.entrada.text)
            fahrenheit = (celsius * 9 / 5) + 32
            self.resultado.text = (
                f'{celsius:.2f} °C = {fahrenheit:.2f} °F'
            )

        except ValueError:
            self.resultado.text = 'Escribe un número válido'

    def convertir_fahrenheit(self, _instance):
        #Convierte el valor ingresado de Fahrenheit a Celsius.
        try:
            fahrenheit = float(self.entrada.text)
            celsius = (fahrenheit - 32) * 5 / 9
            self.resultado.text = (
                f'{fahrenheit:.2f} °F = {celsius:.2f} °C'
            )

        except ValueError:
            self.resultado.text = 'Escribe un número válido'

    def limpiar(self, _instance):
        #Restablece la entrada y el mensaje de resultado.
        self.entrada.text = ''
        self.resultado.text = 'El resultado aparecerá aquí'


class ConversorTemperaturaApp(App):
    #Aplicación Kivy que inicializa la interfaz del conversor.

    def build(self):
        return ConversorTemperatura()


if __name__ == '__main__':
    ConversorTemperaturaApp().run()

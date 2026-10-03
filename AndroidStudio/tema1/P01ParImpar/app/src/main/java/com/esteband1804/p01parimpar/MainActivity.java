package com.esteband1804.p01parimpar;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;

public class MainActivity extends Activity {

    private EditText numero;
    private EditText res;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Se toman los valores de las cajas de texto
        numero = (EditText) findViewById(R.id.txtnumero);
        res = (EditText) findViewById(R.id.txtres);

        Button boton = (Button) findViewById(R.id.boton_ejecutar);

        boton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int num, residuo;

                // Convierte texto a número
                num = Integer.parseInt(numero.getText().toString());

                // Se obtiene el residuo de un número
                residuo = num % 2;

                // Se verifica si el número es par o impar
                if (residuo == 0)
                    res.setText("" + "Par");
                else
                    res.setText("" + "Impar");
            }
        });
    }
}
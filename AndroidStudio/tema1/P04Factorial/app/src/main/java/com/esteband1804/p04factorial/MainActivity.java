package com.esteband1804.p04factorial;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;

public class MainActivity extends Activity {

    private EditText numero; // Variables que toman los valores de las cajas
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
            public void onClick(View view) {
                int num, i, fact = 1;

                num = Integer.parseInt(numero.getText().toString()); // Convierte a número

                for (i = 1; i <= num; i++) // Se calcula el factorial de un número
                {
                    fact = fact * i;
                }

                res.setText("" + Integer.toString(fact)); // Se muestra el resultado
            }
        });
    }
}
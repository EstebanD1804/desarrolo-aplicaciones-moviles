package com.esteband1804.p03convertirmayusculas;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;

public class MainActivity extends Activity {

    private EditText letras;
    private EditText res;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        letras = (EditText) findViewById(R.id.txttexto);
        res = (EditText) findViewById(R.id.txtres);

        Button boton = (Button) findViewById(R.id.boton_ejecutar);

        boton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                res.setText("" + letras.getText().toString().toUpperCase());
            }
        });
    }
}
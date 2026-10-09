package com.esteband1804.p06operacionesbasicas;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;

public class MainActivity extends Activity {
    //Variables que toman los valores de las cajas
    private EditText numero1;
    private EditText numero2;
    private EditText res;

    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        //android:layout_width="200px" Tamano de una caja
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Se toman los valores de las cajas de texto
        numero1 = (EditText) findViewById(R.id.txtnumero1);
        numero2 = (EditText) findViewById(R.id.txtnumero2);
        res = (EditText) findViewById(R.id.txtres);

        Button botonSuma=(Button) findViewById(R.id.boton_sumar);
        Button botonResta=(Button) findViewById(R.id.boton_restar);
        Button botonMult=(Button) findViewById(R.id.boton_mult);
        Button botonDiv=(Button) findViewById(R.id.boton_div);

        botonSuma.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                int num1,num2,result;
                //Se convierte el valor texto a número
                num1=Integer.parseInt(numero1.getText().toString());
                num2=Integer.parseInt(numero2.getText().toString());
                //Se calcula la sumatoria
                result=num1+num2;
                //Se muestra el resultado
                res.setText(""+Integer.toString(result));
            }
        });

        botonResta.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                int num1,num2,result;
                //Se convierte el valor texto a número
                num1=Integer.parseInt(numero1.getText().toString());
                num2=Integer.parseInt(numero2.getText().toString());
                //Se calcula la resta
                result=num1-num2;
                //Se muestra el resultado
                res.setText(""+Integer.toString(result));
            }
        });

        botonMult.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                int num1,num2,result;
                //Se convierte el valor texto a número
                num1=Integer.parseInt(numero1.getText().toString());
                num2=Integer.parseInt(numero2.getText().toString());
                //Se calcula la multiplicación
                result=num1*num2;
                //Se muestra el resultado
                res.setText(""+Integer.toString(result));
            }
        });

        botonDiv.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                int num1,num2,result;
                //Se convierte el valor texto a número
                num1=Integer.parseInt(numero1.getText().toString());
                num2=Integer.parseInt(numero2.getText().toString());
                //Se calcula la división
                result=num1/num2;
                //Se muestra el resultado
                res.setText(""+Integer.toString(result));
            }
        });
    }
}
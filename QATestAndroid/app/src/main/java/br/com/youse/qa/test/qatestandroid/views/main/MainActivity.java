package br.com.youse.qa.test.qatestandroid.views.main;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import br.com.youse.qa.test.qatestandroid.R;


public class MainActivity extends AppCompatActivity {
    public static final String EMAIL = "email";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        String email = getIntent().getExtras().getString(EMAIL);
        TextView welcome = (TextView) findViewById(R.id.welcome);
        welcome.setText(welcome.getText().toString() + email);
    }
}

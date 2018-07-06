package br.com.youse.qa.test.qatestandroid.views.login;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.support.v7.app.AppCompatActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.ProgressBar;

import java.util.concurrent.TimeUnit;

import br.com.youse.qa.test.qatestandroid.R;
import br.com.youse.qa.test.qatestandroid.Utils;
import br.com.youse.qa.test.qatestandroid.views.main.MainActivity;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

public class LoginActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        final ProgressBar progressBar = (ProgressBar) findViewById(R.id.loading);
        final TextInputEditText email = (TextInputEditText) findViewById(R.id.email);
        final TextInputEditText password = (TextInputEditText) findViewById(R.id.password);
        final TextInputLayout emailContainer = (TextInputLayout) findViewById(R.id.emailInputLayout);
        final TextInputLayout passwordContainer = (TextInputLayout) findViewById(R.id.passwordInputLayout);

        final View nextBtn = findViewById(R.id.nextBtn);
        final View loginBtn = findViewById(R.id.loginBtn);
        nextBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (Utils.isValidEmail(email.getText().toString())) {
                    emailContainer.setVisibility(View.GONE);
                    passwordContainer.setVisibility(View.VISIBLE);
                    nextBtn.setVisibility(View.GONE);
                    loginBtn.setVisibility(View.VISIBLE);
                } else {
                    emailContainer.setError("Email Inválido");
                }
            }
        });
        loginBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (Utils.isValidPassword(password.getText().toString())) {
                    progressBar.setVisibility(View.VISIBLE);
                    Observable.just("").delay(5, TimeUnit.SECONDS)
                            .subscribeOn(Schedulers.newThread())
                            .observeOn(AndroidSchedulers.mainThread())
                            .subscribe(new Action1<String>() {
                                @Override
                                public void call(String s) {
                                    progressBar.setVisibility(View.GONE);
                                    Intent intent = new Intent(email.getContext(), MainActivity.class);
                                    intent.putExtra(MainActivity.EMAIL, email.getText().toString());
                                    startActivity(intent);
                                    finish();
                                }
                            });
                } else {
                    passwordContainer.setError("Senha Inválida");
                }
            }
        });

        email.addTextChangedListener(getErroCleaner(emailContainer));
        password.addTextChangedListener(getErroCleaner(passwordContainer));
    }

    @NonNull
    private TextWatcher getErroCleaner(final TextInputLayout editText) {
        return new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                editText.setError("");
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        };
    }
}

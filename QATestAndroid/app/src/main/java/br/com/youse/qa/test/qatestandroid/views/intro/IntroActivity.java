package br.com.youse.qa.test.qatestandroid.views.intro;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

import br.com.youse.qa.test.qatestandroid.R;
import br.com.youse.qa.test.qatestandroid.models.Slide;


/**
 * Created by julio on 14/06/16.
 */
public class IntroActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_intro);
        ViewPager pager = (ViewPager) findViewById(R.id.pager);
        List<Slide> slides = getSlides();
        IntroAdapter adapter = new IntroAdapter(getSupportFragmentManager(), slides);
        pager.setAdapter(adapter);
    }

    public List<Slide> getSlides() {
        List<Slide> slides = new ArrayList<>();
        slides.add(new Slide(1, "Olá", R.color.colorPrimary, false));
        slides.add(new Slide(2, "Bem Vindo!", R.color.colorAccent, false));
        slides.add(new Slide(3, "", R.color.red, true));
        return slides;
    }


}

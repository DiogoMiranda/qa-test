package br.com.youse.qa.test.qatestandroid.views.intro;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

import java.util.ArrayList;
import java.util.List;

import br.com.youse.qa.test.qatestandroid.models.Slide;


public class IntroAdapter extends FragmentStatePagerAdapter {
        private List<Slide> slides = new ArrayList<Slide>();
        public IntroAdapter(FragmentManager fm, List<Slide> slides) {
            super(fm);
            this.slides = slides;
        }

        @Override
        public Fragment getItem(int position) {
            return IntroFragment.getInstance(slides.get(position));
        }

        @Override
        public int getCount() {
            return slides.size();
        }
    }
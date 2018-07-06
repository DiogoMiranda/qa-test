package br.com.youse.qa.test.qatestandroid.views.intro;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import br.com.youse.qa.test.qatestandroid.R;
import br.com.youse.qa.test.qatestandroid.models.Slide;
import br.com.youse.qa.test.qatestandroid.views.login.LoginActivity;


/**
 * Created by julio on 14/06/16.
 */
public class IntroFragment extends Fragment {
    private static final String PAGE = "page";

    public static Fragment getInstance(Slide slide) {
        IntroFragment fragment = new IntroFragment();
        Bundle bunble = new Bundle();
        bunble.putSerializable(PAGE, slide);
        fragment.setArguments(bunble);
        return fragment;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_intro, container, false);
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Slide slide = (Slide) getArguments().getSerializable(PAGE);
        view.setBackgroundColor(ContextCompat.getColor(getContext(), slide.getColor()));
        TextView pageNumber = (TextView) view.findViewById(R.id.pageNumber);
        pageNumber.setText(slide.getNumber() + "");
        TextView pageTitle = (TextView) view.findViewById(R.id.pageTitle);
        pageTitle.setText(slide.getTitle());
        if (slide.isLast()) {
            View btn = view.findViewById(R.id.accessBtn);
            btn.setVisibility(View.VISIBLE);
            btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Activity activity = getActivity();
                    if (activity != null) {
                        Intent intent = new Intent(activity, LoginActivity.class);
                        activity.startActivity(intent);
                        activity.finish();
                    }
                }
            });
        }
    }
}

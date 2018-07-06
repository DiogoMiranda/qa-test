package br.com.youse.qa.test.qatestandroid.views.intro;
import android.content.Intent;
import android.support.test.filters.LargeTest;
import android.support.test.rule.ActivityTestRule;
import android.support.test.runner.AndroidJUnit4;
import org.junit.Test;
import org.junit.runner.RunWith;
import br.com.youse.qa.test.qatestandroid.R;
import br.com.youse.qa.test.qatestandroid.views.login.LoginActivity;
import br.com.youse.qa.test.qatestandroid.views.main.MainActivity;

import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.action.ViewActions.typeText;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withText;

@LargeTest
@RunWith(AndroidJUnit4.class)
public class LoginSucessTest {

    public ActivityTestRule<IntroActivity> rule = new ActivityTestRule<>(IntroActivity.class, false, false);
    public ActivityTestRule<LoginActivity> ruleLogin = new ActivityTestRule<>(LoginActivity.class, false, false);
    public ActivityTestRule<MainActivity> ruleLoginWelcome = new ActivityTestRule<>(MainActivity.class, false, false);


    @Test
    public void testLoginSucess() {
        ruleLogin.launchActivity(new Intent());
        onView(withId(R.id.email)).perform(typeText("youser1@youse.com.br"));
        onView(withText("PROSSEGUIR")).perform(click());
        onView(withId(R.id.password)).perform(typeText("12345678"));
        onView(withText("LOGIN")).perform(click());
    }


    @Test
    public void testLoginSucessWelcome() {
        Intent welcome = new Intent();
        welcome.putExtra("email", "youser1@youse.com.br");
        ruleLoginWelcome.launchActivity(welcome);
        onView(withText("Seja bem vindo, youser1@youse.com.br")).check(matches(isDisplayed()));
    }
}

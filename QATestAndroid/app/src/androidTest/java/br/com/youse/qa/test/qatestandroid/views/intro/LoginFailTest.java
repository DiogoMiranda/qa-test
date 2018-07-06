package br.com.youse.qa.test.qatestandroid.views.intro;
import android.content.Intent;
import android.support.test.espresso.intent.Intents;
import android.support.test.espresso.matcher.ViewMatchers;
import android.support.test.filters.LargeTest;
import android.support.test.rule.ActivityTestRule;
import android.support.test.runner.AndroidJUnit4;
import org.junit.Test;
import org.junit.runner.RunWith;
import br.com.youse.qa.test.qatestandroid.R;
import br.com.youse.qa.test.qatestandroid.views.login.LoginActivity;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.action.ViewActions.swipeLeft;
import static android.support.test.espresso.action.ViewActions.typeText;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.ViewMatchers.hasSibling;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.core.AllOf.allOf;

@LargeTest
@RunWith(AndroidJUnit4.class)
public class LoginFailTest {

    public ActivityTestRule<IntroActivity> rule = new ActivityTestRule<>(IntroActivity.class, false, false);
    public ActivityTestRule<LoginActivity> ruleLogin = new ActivityTestRule<>(LoginActivity.class, false, false);

    @Test
    public void testLoginEmailEmpty(){
        ruleLogin.launchActivity(new Intent());
        onView(withText("PROSSEGUIR")).perform(click());
        onView(withText("Email Inválido")).check(matches(isDisplayed()));
    }

    @Test
    public void testLoginEmailError(){
        ruleLogin.launchActivity(new Intent());
        onView(withId(R.id.email)).perform(typeText("teste@youse.com.br"));
        onView(withText("PROSSEGUIR")).perform(click());
        onView(withText("Email Inválido")).check(matches(isDisplayed()));
    }
}


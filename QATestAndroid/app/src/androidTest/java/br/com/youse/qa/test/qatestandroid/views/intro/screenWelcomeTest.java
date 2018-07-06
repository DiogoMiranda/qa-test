package br.com.youse.qa.test.qatestandroid.views.intro;
import android.content.Intent;
import android.support.test.espresso.matcher.ViewMatchers;
import android.support.test.rule.ActivityTestRule;
import org.junit.Rule;
import org.junit.Test;
import br.com.youse.qa.test.qatestandroid.R;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.action.ViewActions.swipeLeft;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withText;

public class screenWelcomeTest {

    @Rule
    public ActivityTestRule<IntroActivity> rule = new ActivityTestRule<>(IntroActivity.class, false, false);


    @Test
    public void testScreenWelcome() {
        rule.launchActivity(new Intent());
        onView(ViewMatchers.withId(R.id.pager)).perform(swipeLeft());
        onView(withText("Bem Vindo!")).check(matches(isDisplayed()));
        onView(withText("2")).check(matches(isDisplayed()));
    }
}

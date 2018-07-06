package br.com.youse.qa.test.qatestandroid.views.intro;
import android.content.Intent;
import android.support.test.rule.ActivityTestRule;
import org.junit.Rule;
import org.junit.Test;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withText;

public class ScreenHelloTest {

    @Rule
    public ActivityTestRule<IntroActivity> rule = new ActivityTestRule<>(IntroActivity.class, false, false);

    @Test
    public void testScreenHello() {
        rule.launchActivity(new Intent());
        onView(withText("Olá")).check(matches(isDisplayed()));
        onView(withText("1")).check(matches(isDisplayed()));
    }
}

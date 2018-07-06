package br.com.youse.qa.test.qatestandroid.views.intro;
import android.app.Activity;
import android.app.Instrumentation;
import android.content.Intent;
import android.support.test.espresso.intent.Intents;
import android.support.test.espresso.matcher.ViewMatchers;
import android.support.test.rule.ActivityTestRule;
import org.hamcrest.Matcher;
import org.junit.Rule;
import org.junit.Test;
import br.com.youse.qa.test.qatestandroid.R;
import br.com.youse.qa.test.qatestandroid.views.login.LoginActivity;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.action.ViewActions.swipeLeft;
import static android.support.test.espresso.intent.Intents.intending;
import static android.support.test.espresso.intent.matcher.IntentMatchers.hasComponent;
import static android.support.test.espresso.matcher.ViewMatchers.hasSibling;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.core.AllOf.allOf;

public class ScreenAccessTest {

    @Rule
    public ActivityTestRule<IntroActivity> rule = new ActivityTestRule<>(IntroActivity.class, false, false);

    @Test
    public void testScreenAcess() {
        rule.launchActivity(new Intent());
        Intents.init();

        onView(ViewMatchers.withId(R.id.pager)).perform(swipeLeft());
        onView(ViewMatchers.withId(R.id.pager)).perform(swipeLeft());

        Matcher<Intent> matcher = hasComponent(LoginActivity.class.getName());
        Instrumentation.ActivityResult
                result = new Instrumentation.ActivityResult(Activity.RESULT_OK, null);
        intending(matcher).respondWith(result);
        onView(allOf(withId(R.id.accessBtn), hasSibling(withText("3")))).perform(click());
        Intents.release();
    }
}

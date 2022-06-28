package runners;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(plugin = {"pretty"}, tags = "@myTest",
        features = "src/test/resources/features",
        glue = {"classpath:steps"})
public class TestSuiteUi {
}
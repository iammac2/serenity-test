package test.java.runners;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
    tags = {"@myTest"},
    plugin = {"pretty"},
    features = {src/test/resources/features},
    glue = {test.java.steps})

public class TestSuiteUi { 
}

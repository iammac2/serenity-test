package test.java.runners;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
    tags = {"@myTest"},
    plugin = {"pretty"},
    features = {classpath:features},
    glue = {test.java.steps}
)

public class TestSuiteUi {
    
}

package test.java.steps;

import net.thucydides.core.annotations.Steps;
import test.java.pages.LoginPage;
import io.cucumber.java.en.Given;

public class LoginSteps {

    @Steps
    LoginPage loginPage;

    @Given("^I have logged in as user (.*)$")
    public void iHaveLoggedInAsUser(String username) {
        loginPage.navigateToLogin();
    }
}

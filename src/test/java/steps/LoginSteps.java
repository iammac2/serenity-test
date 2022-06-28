package test.java.steps;

public class LoginSteps {

    @Steps
    LoginPage loginPage;

    @Given("^I have logged in as user (.*)$")
    public void iHaveLoggedInAsUser(String username) {
        loginPage.navigateToLogin();
    }
}

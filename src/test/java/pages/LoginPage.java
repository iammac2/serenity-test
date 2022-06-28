package test.java.pages;

@DefaultUrl("https://www.saucedemo.com/")
public class LoginPage extends PageObject {

	@FindBy(id = "login-button")
	private WebElementFacade loginButton;

	public void navigateToLogin() {
		open();
	}

	@WhenPageOpens
	public void checkLoginButtonIsVisible() {
		loginButton.waitUntilVisible();
	}
}

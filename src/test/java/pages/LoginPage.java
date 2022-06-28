package pages;

import net.serenitybdd.core.pages.PageObject;
import org.openqa.selenium.support.FindBy;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.WhenPageOpens;

public class LoginPage extends PageObject {

	@FindBy(id = "login-button")
	private WebElementFacade loginButton;

	public void navigateToLogin() {
		getDriver().get("https://www.saucedemo.com");
	}

	@WhenPageOpens
	public void checkLoginButtonIsVisible() {
		loginButton.waitUntilVisible();
	}
}

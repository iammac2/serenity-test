package test.java.pages;

import net.serenitybdd.core.pages.PageObject;
import org.openqa.selenium.support.FindBy;
import net.thucydides.core.annotations.DefaultUrl;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.WhenPageOpens;

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

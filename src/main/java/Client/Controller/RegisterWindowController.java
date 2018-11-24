package Client.Controller;

import Client.Display;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;

public class RegisterWindowController {

	private MainScreenController mainController;

	@FXML
	TextField loginTextField;
	@FXML
	TextField firstNameTextField;
	@FXML
	TextField lastNameTextField;
	@FXML
	TextField peselTextField;
	@FXML
	TextField phoneNrTextField;
	@FXML
	TextField emailTextField;
	@FXML
	TextField countryTextField;
	@FXML
	TextField cityTextField;
	@FXML
	TextField streetTextField;
	@FXML
	TextField houseNrTextField;
	@FXML
	TextField flatNrTextField;
	@FXML
	PasswordField passField;
	@FXML
	Button registerButton;
	@FXML
	Label clockLabel;
	
	
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}
	
	@FXML
	public void register()
	{
		
	}
	
	@FXML
	public void back()
	{
		mainController.loadStartWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

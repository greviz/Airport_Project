package Client.Controller.Clients;

import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class ClientCheckWindowController {
	private MainScreenController mainController;
	
	@FXML
	Label clockLabel;
	@FXML
	Button backButton;
	@FXML
	Button checkButton;
	@FXML
	TextField checkTextField;
	
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void check() {

	}

	
	@FXML
	public void back()
	{
		mainController.loadClientWindow();
	}
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

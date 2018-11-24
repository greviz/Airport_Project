package Client.Controller.Clients;

import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

public class ClientPreviewWindowController {
	private MainScreenController mainController;
	
	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
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

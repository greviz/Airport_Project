package Client.Controller.Technical;

import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

public class TechnicalCheckWindowController {
	private MainScreenController mainController;
	
	
	@FXML
	Button backButton;
	@FXML
	public void back()
	{
		mainController.loadTechnicalWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

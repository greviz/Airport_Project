package Client.Controller.Admin;

import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class AdminGiveWindowController {

private MainScreenController mainController;
	
	
	@FXML
	Button backButton;
	@FXML
	Button confirmButton;
	@FXML
	Label clockLabel;
	@FXML
	ComboBox workerComboBox;
	@FXML
	ComboBox permitComboBox;
	
	
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}
	
	@FXML
	public void workerChoice()
	{
		
	}
	@FXML
	public void permitChoice()
	{
		
	}
	@FXML
	public void confirm()
	{
		
	}

	@FXML
	public void back()
	{
		mainController.loadAdminWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

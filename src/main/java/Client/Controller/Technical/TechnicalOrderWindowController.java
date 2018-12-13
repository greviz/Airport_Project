package Client.Controller.Technical;

import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;

public class TechnicalOrderWindowController {
	private MainScreenController mainController;
	
	
	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	Button confirmButton;
	@FXML
	ComboBox planeComboBox;
	@FXML
	DatePicker datePicker;
	@FXML
	TextArea orderTextArea;
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void plane() {
	}

	@FXML
	public void date() {
	}

	@FXML
	public void confirm() {
	}

	@FXML
	public void back()
	{
		mainController.loadTechnicalWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

package Client.Controller.Worker;

import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;

public class WorkerEditWindowController {

	private MainScreenController mainController;

	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	ComboBox departureComboBox;
	@FXML
	ComboBox arrivalComboBox;
	@FXML
	DatePicker datePicker;
	@FXML
	Button editButton;
	
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void departure() {

	}

	@FXML
	public void arrival() {

	}

	@FXML
	public void date() {

	}
	@FXML
	public void edit() {

	}
	@FXML
	public void back() {
		mainController.loadWorkerWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

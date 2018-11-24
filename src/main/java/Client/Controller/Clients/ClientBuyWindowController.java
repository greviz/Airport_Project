package Client.Controller.Clients;

import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;

public class ClientBuyWindowController {
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
	ComboBox dateComboBox;
	@FXML
	ComboBox classComboBox;
	@FXML
	ComboBox seatComboBox;
	@FXML
	Button buyButton;
	
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
	public void classChoice() {

	}

	@FXML
	public void seat() {

	}
	@FXML
	public void buy() {

	}
	@FXML
	public void back() {
		mainController.loadClientWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
}

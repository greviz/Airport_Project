package Client.Controller.Clients;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

public class ClientPreviewWindowController {
	private MainScreenController mainController;
	private Client client;
	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	Label map;



	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	public void setLanguage(){

		backButton.setText(client.getLanguage().get("Back_button"));
		map.setText(client.getLanguage().get("C_mapbtn"));

	}

	@FXML
	public void back()
	{
		mainController.loadClientWindow();
	}
	

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}
	public void setClient(Client client)
	{
		this.client=client;
	}
}


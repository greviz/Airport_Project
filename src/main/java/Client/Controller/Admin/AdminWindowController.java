package Client.Controller.Admin;

import java.io.IOException;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;

public class AdminWindowController {

	private MainScreenController mainController;

	@FXML
	Button giveButton;
	@FXML
	Button determineButton;
	@FXML
	Button logoutButton;
	@FXML
	Label clockLabel;
	@FXML
	Label title;

	private Client client;


	public void setLanguage() {
		giveButton.setText(client.getLanguage().get("A_permissionbtn"));
		determineButton.setText(client.getLanguage().get("A_salarysbtn"));
		logoutButton.setText(client.getLanguage().get("Logoff_button"));
		title.setText(client.getLanguage().get("C_title"));
	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void give() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Admin/AdminGiveWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		AdminGiveWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
		ctrl.setLanguage();
	}

	@FXML
	public void determine() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Admin/AdminDetermineWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		AdminDetermineWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
		ctrl.setLanguage();
	}

	@FXML
	public void logout() {
		mainController.loadStartWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
		
	}
}

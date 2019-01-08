package Client.Controller.Technical;

import java.io.IOException;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;

public class TechnicalWindowController {

	private MainScreenController mainController;
	
	@FXML
	Button checkButton;
	@FXML
	Button orderButton;
	@FXML
	Button enterButton;
	@FXML
	Button logoutButton;
	@FXML
	Label clockLabel;

	private Client client;
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}
	
	@FXML
	public void check(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Technical/TechnicalCheckWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		TechnicalCheckWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
	}

	@FXML
	public void order(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Technical/TechnicalOrderWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		TechnicalOrderWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
	}
	@FXML
	public void enter(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Technical/TechnicalEnterWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		TechnicalEnterWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
	}

	
	@FXML
	public void logout(){
		mainController.loadStartWindow();
	}
	

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
	}
}

package Client.Controller.Clients;

import java.io.IOException;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;

public class ClientWindowController {

	private MainScreenController mainController;
	
	@FXML
	Button findButton;
	@FXML
	Button buyButton;
	@FXML
	Button checkButton;
	@FXML
	Button printButton;
	@FXML
	Button previewButton;
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
	public void find(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Clients/ClientFindWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ClientFindWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
	}
	@FXML
	public void buy(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Clients/ClientBuyWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ClientBuyWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.addValues();
		mainController.setScreen(pane);
	}
	@FXML
	public void check(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Clients/ClientCheckWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ClientCheckWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		mainController.setScreen(pane);
	}
	@FXML
	public void print(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Clients/ClientPrintWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ClientPrintWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		mainController.setScreen(pane);
	}
	@FXML
	public void preview(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Clients/ClientPreviewWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ClientPreviewWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
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

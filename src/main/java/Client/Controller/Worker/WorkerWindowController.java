package Client.Controller.Worker;

import java.io.IOException;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;

public class WorkerWindowController {

	private MainScreenController mainController;
	
	@FXML
	Button addButton;
	@FXML
	Button editButton;
	@FXML
	Button cancelButton;
	@FXML
	Button logoutButton;
	@FXML
	Button airport;
	@FXML
	Button plane;
	
	@FXML
	Label clockLabel;
	@FXML
	Label title;

	private Client client;

	public void setLanguage() {
		addButton.setText(client.getLanguage().get("W_flight"));
		plane.setText(client.getLanguage().get("W_plane"));
		editButton.setText(client.getLanguage().get("W_edit"));
		cancelButton.setText(client.getLanguage().get("W_postpone"));
		airport.setText(client.getLanguage().get("W_airport"));
		logoutButton.setText(client.getLanguage().get("Logoff_button"));
		title.setText(client.getLanguage().get("C_title"));
	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}
	@FXML
	public void add(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Worker/WorkerAddWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		WorkerAddWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.setLanguage();
		ctrl.addValues();
		mainController.setScreen(pane);
	}
	@FXML
	public void addPlane(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Worker/WorkerAddPlaneWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		WorkerAddPlaneWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.setLanguage();
		mainController.setScreen(pane);
	}

	@FXML
	public void addAirport(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Worker/WorkerAddAirportWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		WorkerAddAirportWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.setLanguage();
		mainController.setScreen(pane);
	}
	@FXML
	public void edit(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Worker/WorkerEditWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		WorkerEditWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.setLanguage();
		ctrl.addValues();
		mainController.setScreen(pane);
	}
	@FXML
	public void cancel(){
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Worker/WorkerCancelWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		WorkerCancelWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		ctrl.setLanguage();
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

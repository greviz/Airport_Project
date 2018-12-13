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
	Label clockLabel;

	private Client client;

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

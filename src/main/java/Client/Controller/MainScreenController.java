package Client.Controller;

import java.io.IOException;

import Client.Client;
import Client.Controller.Admin.AdminWindowController;
import Client.Controller.Clients.ClientWindowController;
import Client.Controller.Technical.TechnicalWindowController;
import Client.Controller.Worker.WorkerWindowController;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;

public class MainScreenController {

	@FXML
	private StackPane mainStackPane;


	private Client client;

	@FXML
	public void initialize() {
		loadStartWindow();
	}
	
	{
		client = new Client();
		client.setLanguage("POL");
		try {
			client.Connect();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public void loadStartWindow()
	{
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/StartWindow.fxml"));
		AnchorPane pane = null;

		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		StartWindowController ctrl = loader.getController();
		ctrl.setMainController(this);
		ctrl.setClient(client);
		setScreen(pane);
	}
	public void loadClientWindow() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Clients/ClientWindow.fxml"));
		AnchorPane pane = null;

		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ClientWindowController ctrl = loader.getController();
		ctrl.setMainController(this);
		ctrl.setClient(client);
		setScreen(pane);
	}
	public void loadTechnicalWindow() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Technical/TechnicalWindow.fxml"));
		AnchorPane pane = null;

		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		TechnicalWindowController ctrl = loader.getController();
		ctrl.setMainController(this);
		ctrl.setClient(client);
		setScreen(pane);
	}
	public void loadAdminWindow() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Admin/AdminWindow.fxml"));
		AnchorPane pane = null;

		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		AdminWindowController ctrl = loader.getController();
		ctrl.setMainController(this);
		ctrl.setClient(client);
		setScreen(pane);
	}
	public void loadWorkerWindow() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/Worker/WorkerWindow.fxml"));
		AnchorPane pane = null;

		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		WorkerWindowController ctrl = loader.getController();
		ctrl.setMainController(this);
		ctrl.setClient(client);
		setScreen(pane);
	}
	private void setScreen(AnchorPane pane) {
		mainStackPane.getChildren().clear();
		mainStackPane.getChildren().add(pane);
		
	}
	private void setScreen(StackPane pane) {
		mainStackPane.getChildren().clear();
		mainStackPane.getChildren().add(pane);
		
	}
	public void setScreen(Pane pane) {
		mainStackPane.getChildren().clear();
		mainStackPane.getChildren().add(pane);
	}
	public	Client getClient() {
		return client;
	}


}

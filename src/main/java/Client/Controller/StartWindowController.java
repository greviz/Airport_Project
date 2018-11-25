package Client.Controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import Client.Client;
import Client.Display;
import javafx.animation.Animation;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.util.Duration;

public class StartWindowController {

	private MainScreenController mainController;
	private Client client;

	@FXML
	TextField loginTextField;
	@FXML
	PasswordField passTextField;
	@FXML
	Button loginButton;
	@FXML
	Button registerButton;
	@FXML
	Label clockLabel;

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void login() {
		mainController.loadClientWindow();
		// mainController.loadTechnicalWindow();
		// mainController.loadWorkerWindow();
		// mainController.loadAdminWindow();

	}

	@FXML
	public void register() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/RegisterWindow.fxml"));
		AnchorPane pane = null;
		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		RegisterWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		mainController.setScreen(pane);
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;

	}

	public void setClient(Client client) {
		this.client=client;
	}
}

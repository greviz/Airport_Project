package Server;

import java.io.IOException;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class MainServer extends Application {
	private Button start;
	private Stage stage;
	private TextField login;
	private TextField password;
	private TextField port;
	private Button stop;

	private AnchorPane pane;
	private Scene scene;
	public static void main(String[] args) {
		launch();
	}
	@Override
	public void start(Stage stg) throws Exception {

		pane = new AnchorPane();
		scene = new Scene(pane);
		Label log = new Label("Login");
		Label has = new Label("Haslo");
		Label por = new Label("Port");
		stg.setScene(scene);
		stg.setWidth(300);
		stg.setHeight(200);
		stg.setTitle("Server");

		log.setLayoutY(10);
		log.setLayoutX(10);
		has.setLayoutY(40);
		has.setLayoutX(10);
		por.setLayoutY(70);
		por.setLayoutX(10);


		login = new TextField("lot");
		login.setLayoutX(100);
		login.setLayoutY(10);

		password = new TextField("lot");
		password.setLayoutX(100);
		password.setLayoutY(40);

		port = new TextField("3649");
		port.setLayoutX(100);
		port.setLayoutY(70);

		start = new Button("Start serwera");
		start.setLayoutX(40);
		start.setLayoutY(110);

		stop = new Button("Stop serwera");
		stop.setLayoutX(170);
		stop.setLayoutY(110);

		pane.getChildren().addAll(log,login,port,password,start,has,por,stop);
		stg.setResizable(false);
		startServer();
		stopServer();
		stg.show();
		this.stage = stg;
	}

	public void startServer() {
		start.setOnAction(new EventHandler<ActionEvent>() {
			@Override
			public void handle(ActionEvent e) {
				JDBC.connectToDB(login.getText(),password.getText());
				new Thread()
				{
					public void run() {
						Server.Start(Integer.parseInt(port.getText()));
					}
				}.start();
			}
		});
	}

	public void stopServer() {
		stop.setOnAction(new EventHandler<ActionEvent>() {
			@Override
			public void handle(ActionEvent e) {
				JDBC.closeConnection();
				stage.close();
				System.exit(0);
				Server.Stop();
			}
		});
	}

	public void setScene(Scene scene2) {
		this.scene=scene2;
	}

}

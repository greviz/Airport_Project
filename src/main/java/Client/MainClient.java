package Client;

import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

public class MainClient extends Application {

	public static void main(String[] args) {
		launch();
	}

	@Override
	public void start(Stage stg) throws Exception {

		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/MainScreen.fxml"));
		StackPane pane = loader.load();

		Scene scene = new Scene(pane);

		stg.setScene(scene);
		stg.setWidth(600);
		stg.setHeight(400);
		stg.setTitle("System zarządzania lotniskiem");
		stg.setResizable(false);
		stg.show();
	
	}
}

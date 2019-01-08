package Client.Controller.Admin;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Users;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class 	AdminGiveWindowController {

private MainScreenController mainController;
	
	
	@FXML
	Button backButton;
	@FXML
	Button confirmButton;
	@FXML
	Label clockLabel;
	@FXML
	ComboBox workerComboBox;
	@FXML
	ComboBox permitComboBox;
	private Client client;


	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	public void addValues() {

		Users u = client.getUsers();
		for(int i=0;i<u.size();i++)
		{
			workerComboBox.getItems().add(u.get(i).getId() + " " + u.get(i).getFirstName()+ " "+u.get(i).getLastName());
		}
	}
	@FXML
	public void workerChoice()
	{
		
	}
	@FXML
	public void permitChoice()
	{
		
	}
	@FXML
	public void confirm()
	{
		String user = (String) workerComboBox.getValue();
		int j =0;

		String temp = "";
		while (true) {
			if (user.charAt(j) == ' ') {
				break;
			}
			temp += user.charAt(j);
			j++;
		}
		System.out.println(temp);
	}

	@FXML
	public void back()
	{
		mainController.loadAdminWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
		
	}

}

package Client.Controller.Clients;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Ticket;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class ClientCheckWindowController {
	private MainScreenController mainController;
	
	@FXML
	Label clockLabel;
	@FXML
	Button backButton;
	@FXML
	Button checkButton;
	@FXML
	TextField checkTextField;
	@FXML
	Label infoLabel;
	@FXML
	Label title;
	@FXML
	Label ticketId;
	private Client client;

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	public void setLanguage(){

		backButton.setText(client.getLanguage().get("Back_button"));
		checkButton.setText(client.getLanguage().get("Cc_checkbtn"));
		title.setText(client.getLanguage().get("Cc_title"));
		ticketId.setText(client.getLanguage().get("C_ticketlbl"));
	}

	@FXML
	public void check() {
		String text = checkTextField.getText();
		int id;
		try
		{
			id = Integer.parseInt(text);
			infoLabel.setVisible(false);
			Ticket t = client.getTicket(new Ticket(id,client.getU().getIdKlienta()));
			if(t.getId()!=-1) {
				String temp = client.getLanguage().get("check_0")+t.getId() + client.getLanguage().get("check_1") + t.getPrice() + client.getLanguage().get("check_2") + t.getRow()
						+ client.getLanguage().get("check_3") + t.getType() + client.getFlightInfo(t.getIdLotu());
				infoLabel.setText(temp);

			}
			else
			{
				infoLabel.setText(client.getLanguage().get("check_4"));
			}
			infoLabel.setVisible(true);
		}catch (Exception e)
		{
			infoLabel.setText(client.getLanguage().get("check_5"));
			infoLabel.setVisible(true);
		}



	}

	
	@FXML
	public void back()
	{
		mainController.loadClientWindow();
	}
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
	}

}

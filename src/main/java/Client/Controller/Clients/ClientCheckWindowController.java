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
	private Client client;

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
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
				String temp = " Id biletu: "+t.getId() + "\n Cena: " + t.getPrice() + "\n Rzad: " + t.getRow()
						+ "\n Typ miejsca: " + t.getType() + client.getFlightInfo(t.getIdLotu());
				infoLabel.setText(temp);

			}
			else
			{
				infoLabel.setText("Wprowadź prawidłowy numer biletu");
			}
			infoLabel.setVisible(true);
		}catch (Exception e)
		{
			infoLabel.setText("Numer biletu musi być liczbą");
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

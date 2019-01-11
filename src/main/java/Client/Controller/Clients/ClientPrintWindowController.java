package Client.Controller.Clients;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Ticket;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.io.PrintWriter;

public class ClientPrintWindowController {
	private MainScreenController mainController;


	@FXML
	Label clockLabel;
	@FXML
	Button backButton;
	@FXML
	Button printButton;
	@FXML
	TextField printTextField;
	@FXML
	Label infoLabel;
	@FXML
	Label ticketId;
	@FXML
	Label title;
	private Client client;

	public void setLanguage(){
		backButton.setText(client.getLanguage().get("Back_button"));
		title.setText(client.getLanguage().get("Cc_title"));
		printButton.setText(client.getLanguage().get("Cp_printbtn"));
		ticketId.setText(client.getLanguage().get("C_ticketlbl"));

	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void print() {
		String text = printTextField.getText();
		int id;
		try
		{
			id = Integer.parseInt(text);
			infoLabel.setVisible(false);
			Ticket t = client.getTicket(new Ticket(id,client.getU().getIdKlienta()));
			if(t.getId()!=-1) {
				String temp = client.getLanguage().get("check_0")+t.getId() + client.getLanguage().get("check_1") + t.getPrice() + client.getLanguage().get("check_2") + t.getRow()
						+ client.getLanguage().get("check_3") + t.getType() + client.getFlightInfo(t.getIdLotu());
				infoLabel.setText(client.getLanguage().get("print_0"));
				PrintWriter writer = new PrintWriter("Ticket nr " + t.getId() + ".txt", "UTF-8");

				writer.println(temp);
				writer.close();
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

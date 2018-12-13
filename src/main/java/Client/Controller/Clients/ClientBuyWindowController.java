package Client.Controller.Clients;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Airports;
import Data.Flights;
import Data.Select;
import Data.Selects;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.Date;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class ClientBuyWindowController {
	private MainScreenController mainController;

	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	ComboBox departureComboBox;
	@FXML
	ComboBox arrivalComboBox;
	@FXML
	ComboBox dateComboBox;
	@FXML
	TextField rowTextField;
	@FXML
	ComboBox seatComboBox;
	@FXML
	Label infoLabel;
	@FXML
	Button buyButton;
	private Client client;
	private Flights flights;
	private Airports airport;
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	public void addValues() {
		flights = client.getFligts();
		airport = client.getAirports();
        Selects s;
           s = client.getSelect("SELECT MIASTO FROM LOTNISKO WHERE ID_LOTNISKA IN (SELECT ID_LOTNISKA_WYLOTU FROM LOT)");
		    for(int i=0;i<s.size();i++)
            {
					departureComboBox.getItems().add(s.get(i).getList().get(0));
			}
		s = client.getSelect("SELECT MIASTO FROM LOTNISKO WHERE ID_LOTNISKA IN (SELECT ID_LOTNISKA_PRZYLOTU FROM LOT)");
		for(int i=0;i<s.size();i++)
		{
			arrivalComboBox.getItems().add(s.get(i).getList().get(0));
		}

		seatComboBox.getItems().addAll(1,2,3);
	}
	@FXML
	public void buy() {
		String arrival = (String) arrivalComboBox.getValue();
		String departure = (String) departureComboBox.getValue();
		String date = (String) dateComboBox.getValue();
		String row = rowTextField.getText();
		Integer seat = (Integer) seatComboBox.getValue();


	}
	@FXML
	public void departure() {

	}

	@FXML
	public void arrival() {

	}

	@FXML
	public void date() {
		if(arrivalComboBox.getValue()==null || departureComboBox.getValue()==null)
		{
			infoLabel.setText("Wybierz lotnisko przylotu i wylotu!");
			infoLabel.setVisible(true);
		}
		else
		{
			dateComboBox.getItems().clear();
			infoLabel.setVisible(false);
			Selects s = client.getSelect("SELECT DATA_LOTU FROM LOT WHERE ID_LOTNISKA_WYLOTU LIKE (SELECT ID_LOTNISKA FROM LOTNISKO " +
					"WHERE MIASTO LIKE '"+ departureComboBox.getValue() + "') AND ID_LOTNISKA_PRZYLOTU LIKE (SELECT ID_LOTNISKA FROM " +
					"LOTNISKO WHERE MIASTO LIKE '" +arrivalComboBox.getValue() + "' )");
			for(int i=0;i<s.size();i++)
			{
				dateComboBox.getItems().add(s.get(i).getList().get(0));
			}

		}
	}

	@FXML
	public void seat() {

	}

	@FXML
	public void back() {
		mainController.loadClientWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}



	public void setClient(Client client) {
		this.client=client;
	}
}

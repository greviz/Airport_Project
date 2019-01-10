package Client.Controller.Worker;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Airports;
import Data.Flights;
import Data.Selects;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;

import java.text.SimpleDateFormat;
import java.util.Date;

public class WorkerCancelWindowController {


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
	ComboBox<String> dateComboBox;
	@FXML
	Button addButton;
	@FXML
	Label infoLabel;
	@FXML
	Label departure;
	@FXML
	Label arrival;
	@FXML
	Label date;
	@FXML
	Label title;

	Flights flights;
	Airports airport;
	private Client client;

	public void setLanguage() {
		backButton.setText(client.getLanguage().get("Back_button"));
		addButton.setText(client.getLanguage().get("Delete_button"));
		departure.setText(client.getLanguage().get("C_departurelbl"));
		arrival.setText(client.getLanguage().get("C_arrivallbl"));
		date.setText(client.getLanguage().get("C_date"));
		title.setText(client.getLanguage().get("Wcf_title"));
	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	public void addValues()
	{
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
			infoLabel.setText(client.getLanguage().get("Wdel_0"));
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
				Date temp = (Date) s.get(i).getList().get(0);
				SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				String date = DATE_FORMAT.format(temp);
				dateComboBox.getItems().add(date);
			}
		}


	}
	@FXML
	public void add() {
		String dep = (String) departureComboBox.getValue();
		String arr = (String) arrivalComboBox.getValue();
		String date = dateComboBox.getValue();
		int flightId = 0;
		flightId = Integer.parseInt(client.getString("SELECT ID_LOTU FROM LOT WHERE ID_LOTNISKA_WYLOTU LIKE " +
				"(SELECT ID_LOTNISKA FROM LOTNISKO WHERE MIASTO LIKE '" + dep + "') AND ID_LOTNISKA_PRZYLOTU LIKE (SELECT ID_LOTNISKA " +
				"FROM LOTNISKO WHERE MIASTO LIKE '" + arr + "')  AND DATA_LOTU LIKE  to_date ('" + date + "','YYYY-MM-DD HH24:MI')"));


		client.getString("DELETE FROM ZAJETE_MIEJSCA WHERE ID_LOTU ="+flightId);
		client.getString("DELETE FROM BILET WHERE ID_LOTU ="+flightId);
		client.getString("DELETE FROM LOT WHERE ID_LOTU ="+flightId);
		infoLabel.setVisible(true);
		infoLabel.setText(client.getLanguage().get("Wdel_1") + flightId);
	}
	@FXML
	public void back() {
		mainController.loadWorkerWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client = client;
	}
}

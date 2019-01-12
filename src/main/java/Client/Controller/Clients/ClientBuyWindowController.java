package Client.Controller.Clients;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Airports;
import Data.Flights;
import Data.Select;
import Data.Selects;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import oracle.sql.DATE;

import javax.swing.event.CaretListener;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Formatter;

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
	ComboBox<String> dateComboBox;
	@FXML
	TextField rowTextField;
	@FXML
	ComboBox seatComboBox;
	@FXML
	Label infoLabel;
	@FXML
	Button buyButton;
	@FXML
	Label title;
	@FXML
	Label departure;
	@FXML
	Label arrival;
	@FXML
	Label seat;
	@FXML
	Label row;
	@FXML
	Label date;

	private Client client;
	private Flights flights;
	private Airports airport;

	public void setLanguage(){
		backButton.setText(client.getLanguage().get("Back_button"));
		buyButton.setText(client.getLanguage().get("C_kupbtn"));
		title.setText(client.getLanguage().get("Cb_title"));
		departure.setText(client.getLanguage().get("C_departurelbl"));
		arrival.setText(client.getLanguage().get("C_arrivallbl"));
		date.setText(client.getLanguage().get("C_date"));
		seat.setText(client.getLanguage().get("Cb_seatlbl"));
		row.setText(client.getLanguage().get("Cb_rowlbl"));
	}

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
		seatComboBox.getItems().addAll(client.getLanguage().get("buy_0"),client.getLanguage().get("buy_1"),client.getLanguage().get("buy_2"));

	}
	@FXML
	public void buy() {
		String arrival = (String) arrivalComboBox.getValue();
		String departure = (String) departureComboBox.getValue();
		String date =  dateComboBox.getValue();
		Integer row = null;
		String seat = (String) seatComboBox.getValue();
		int ticketId, ticketPrice, flightId;
		if(arrival ==null || departure == null || date == null ||seat==null)
		{
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
		}
		else {
			ticketId = Integer.parseInt(client.getString("SELECT MAX(ID_BILETU) FROM BILET")) + 1;

			flightId = Integer.parseInt(client.getString("SELECT ID_LOTU FROM LOT WHERE ID_LOTNISKA_WYLOTU LIKE " +
					"(SELECT ID_LOTNISKA FROM LOTNISKO WHERE MIASTO LIKE '" + departure + "') AND ID_LOTNISKA_PRZYLOTU LIKE (SELECT ID_LOTNISKA " +
					"FROM LOTNISKO WHERE MIASTO LIKE '" + arrival + "')  AND DATA_LOTU LIKE  to_date ('" + date + "','YYYY-MM-DD HH24:MI')"));
			ticketPrice = Integer.parseInt(client.getString("SELECT CENA_BILETU FROM LOT WHERE ID_LOTU LIKE " + flightId));
			int rowNr = Integer.parseInt(client.getString("SELECT ILOSC_MIEJSC/6 FROM SAMOLOT NATURAL JOIN LOT WHERE ID_LOTU LIKE " + flightId));

			try {
				row = Integer.parseInt(rowTextField.getText());
				if (row > rowNr) {
					throw new Exception(client.getLanguage().get("buy_3") + rowNr);
				}
				if(seat.equals("middle"))
				{
					seat="srodek";
				}else if(seat.equals("window"))
				{
					seat="okno";
				}
				else if(seat.equals("hallway"))
				{
					seat="przejscie";
				}
				if(!client.getString("SELECT ID_BILETU FROM BILET WHERE RZAD LIKE " + row + " AND TYP_MIEJSCA LIKE '" + seat + "' AND ID_LOTU LIKE "+flightId).equals("-1"))
				{
					throw new Exception(client.getLanguage().get("buy_4"));
				}

				client.getString("INSERT INTO BILET VALUES (" + ticketId + "," + ticketPrice + "," + row + ",'" + seat + "'," +
						client.getU().getIdKlienta() + "," + flightId + ")");
				infoLabel.setText(client.getLanguage().get("buy_5") + ticketId);
			} catch (Exception e) {
				infoLabel.setText(e.getMessage());
			}
		}
		infoLabel.setVisible(true);

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
			infoLabel.setText(client.getLanguage().get("buy_6"));
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

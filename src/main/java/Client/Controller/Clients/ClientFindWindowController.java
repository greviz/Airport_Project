package Client.Controller.Clients;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Airport;
import Data.Airports;
import Data.Flight;
import Data.Flights;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.util.Date;


public class ClientFindWindowController {
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
	DatePicker datePicker;
	@FXML
	Button findButton;
	@FXML
	Label infoLabel;
	@FXML
	Label title;
	@FXML
	Label departure;
	@FXML
	Label arrival;
	@FXML
	Label date;


	private Client client;
	private Flights flights;
	private Airports airport;

	public void setLanguage(){
		backButton.setText(client.getLanguage().get("Back_button"));
		findButton.setText(client.getLanguage().get("Cf_searchbtn"));
		title.setText(client.getLanguage().get("Cf_title"));
		departure.setText(client.getLanguage().get("C_departurelbl"));
		arrival.setText(client.getLanguage().get("C_arrivallbl"));
		date.setText(client.getLanguage().get("C_date"));

	}

	public void addValues()
	{
		flights = client.getFligts();
		airport = client.getAirports();
		for(int i =0;i<airport.size();i++) {
			departureComboBox.getItems().add(airport.get(i).getCity());
			arrivalComboBox.getItems().add(airport.get(i).getCity());
		}
	}
	@FXML
	public void find() {
		Stage stg = new Stage();
		AnchorPane pane = new AnchorPane();
		Scene scene = new Scene(pane);
		stg.setX(100);
		stg.setY(100);
		stg.setScene(scene);
		stg.setWidth(600);
		stg.setHeight(400);
		stg.setTitle(client.getLanguage().get("flight_0"));

		String arrival = (String) arrivalComboBox.getValue();
		String departure = (String) departureComboBox.getValue();
		LocalDate date = datePicker.getValue();
		if(arrival == null || departure == null || date ==null)
		{
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}
		else {
			int arrId = 0, depId = 0;
			int y = 0;
			for (int i = 0; i < airport.size(); i++) {
				if (airport.get(i).getCity().equals(departure)) {
					depId = airport.get(i).getAirportId();
				}
				if (airport.get(i).getCity().equals(arrival)) {
					arrId = airport.get(i).getAirportId();
				}
			}
			for (int i = 0; i < flights.size(); i++) {
				String temp = flights.get(i).getFlightDate();
				char[] arr = new char[10];
				temp.getChars(0, 10, arr, 0);
				String d = new String(arr);
				if (flights.get(i).getDepartureAirportId() == depId && flights.get(i).getArrivalAirportId() == arrId && d.equals(date.toString())) {
					Label l1 = new Label(client.getLanguage().get("flight_1") + ++y + client.getLanguage().get("flight_2") + departure + client.getLanguage().get("flight_3") + arrival +
							client.getLanguage().get("flight_4") + temp + client.getLanguage().get("flight_5") + flights.get(i).getTicketPrice());
					l1.setLayoutY(y * 35 + 20);
					l1.setLayoutX(30);
					pane.getChildren().add(l1);
				}
			}
			Label l = new Label();
			l.setLayoutX(30);
			l.setLayoutY(20);
			l.setText(client.getLanguage().get("flight_6") + departure + client.getLanguage().get("flight_7") + arrival + client.getLanguage().get("flight_8") + date);

			pane.getChildren().add(l);
			stg.show();
		}
	}
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();

	}

	@FXML
	public void departure() {
	}

	@FXML
	public void arrival() {

	}

	@FXML
	public void date() {

	}

	@FXML
	public void back()
	{
		mainController.loadClientWindow();
	}
	
	public void setMainController(MainScreenController mainController) {

		this.mainController = mainController;
	}

	public void setClient(Client client1) {
		this.client=client1;
	}
}

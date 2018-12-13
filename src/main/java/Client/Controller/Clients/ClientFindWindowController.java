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

	private Client client;
	private Flights flights;
	private Airports airport;
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
		stg.setTitle("Znalezione loty");

		String arrival = (String) arrivalComboBox.getValue();
		String departure = (String) departureComboBox.getValue();
		LocalDate date = datePicker.getValue();

		int arrId=0,depId=0;
		int y = 0;
		for(int i =0;i<airport.size();i++)
		{
			if(airport.get(i).getCity().equals(departure))
			{
				depId=airport.get(i).getAirportId();
			}
			if(airport.get(i).getCity().equals(arrival))
			{
				arrId=airport.get(i).getAirportId();
			}

		}
		for(int i =0;i<flights.size();i++)
		{
			String temp = flights.get(i).getFlightDate();
			char [] arr = new char[10];
			temp.getChars(0,10,arr,0);
			String d = new String(arr);
			if(flights.get(i).getDepartureAirportId() == depId && flights.get(i).getArrivalAirportId() == arrId && d.equals(date.toString()))
			{
				Label l1 = new Label("Znaleziono lot nr " +  ++y + " wylot z " + departure + " przylot do " + arrival +
						" \nData i czas wylotu " + temp + " cena biletu " +flights.get(i).getTicketPrice());
                l1.setLayoutY(y*35 + 20);
				l1.setLayoutX(30);
				pane.getChildren().add(l1);
			}
		}
		Label l = new Label();
		l.setLayoutX(30);
		l.setLayoutY(20);
		l.setText("Poszukiwany lot z " +departure +" do " + arrival + " dnia " + date);

		pane.getChildren().add(l);
		stg.show();
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

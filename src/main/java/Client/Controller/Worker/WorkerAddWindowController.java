package Client.Controller.Worker;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Airports;
import Data.Flights;
import Data.Plane;
import Data.Planes;
import javafx.fxml.FXML;
import javafx.scene.control.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class WorkerAddWindowController {

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
	ComboBox planeComboBox;
	@FXML
	TextField datePicker;
	@FXML
	TextField priceTextField;
	@FXML
	Button addButton;
	@FXML
	Label infoLabel;

	private Client client;
	private Flights flights;
	private Airports airport;
	private Planes plane;
	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}


	public void addValues() {
		airport = client.getAirports();
		plane = client.getPlanes();
		for(int i =0;i<airport.size();i++) {
			departureComboBox.getItems().add(airport.get(i).getCity());
			arrivalComboBox.getItems().add(airport.get(i).getCity());
		}
		for(int i=0;i<plane.size();i++) {
			planeComboBox.getItems().add(plane.get(i).getPlaneId() + " " + plane.get(i).getName() + " " + plane.get(i).getModel() + " " + plane.get(i).getSeatsNumber());
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

	}
	@FXML
	public void add() {
		String arrival= null;
		String departure = null;
		String datePick= null;
		String plane = null;
		int price = 0;
		try{
			arrival = (String) arrivalComboBox.getValue();
			departure = (String) departureComboBox.getValue();
			datePick = (String) datePicker.getText();
			plane = (String) planeComboBox.getValue();
 			price = Integer.parseInt(priceTextField.getText());
		}catch(Exception e)
		{
			infoLabel.setText("Uzupe³nij wszystkie pola");
			infoLabel.setVisible(true);
		}

		if(arrival == null || departure == null || plane == null  || price == 0|| datePick.length()==0)
		{
			infoLabel.setText("Uzupe³nij wszystkie pola");
			infoLabel.setVisible(true);
		}
		else
		{
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy hh:mm");
			Date date = null;
			String state = null;
			try {
				date = formatter.parse(datePick);
				infoLabel.setVisible(false);
				int j = 0, planeId = 0, depId = 0, arrId = 0, flightId = 0;
				String temp = "";
				while (true) {
					if (plane.charAt(j) == ' ') {
						break;
					}
					temp += plane.charAt(j);
					j++;
				}
				planeId = Integer.parseInt(temp);
				state = client.getString("SELECT stan_techniczny FROM SAMOLOT WHERE ID_SAMOLOTU = " + planeId);
				if (state.equals("niesprawny")) {
					infoLabel.setText("Ten samolot jest niesprawny. Wybierz inny.");
					infoLabel.setVisible(true);
				} else {
					for (int i = 0; i < airport.size(); i++) {
						if (airport.get(i).getCity().equals(departure)) {
							depId = airport.get(i).getAirportId();
						}
						if (airport.get(i).getCity().equals(arrival)) {
							arrId = airport.get(i).getAirportId();
						}
					}
					flightId = Integer.parseInt(client.getString("SELECT MAX(ID_LOTU) FROM LOT")) + 1;
					client.getString("INSERT INTO LOT VALUES(" + flightId + "," + planeId + "," + depId + "," + arrId + "," + price + ",TO_DATE('" + datePick + "','dd-mm-yyyy hh24:mi'))");
					infoLabel.setText("Dodano lot");
					infoLabel.setVisible(true);
				}
			}catch (ParseException e) {
				infoLabel.setText("Niepoprawny format");
				infoLabel.setVisible(true);
			}

		}

	}
	@FXML
	public void back()
	{
		mainController.loadWorkerWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client = client;
	}

}

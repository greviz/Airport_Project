package Client.Controller.Worker;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Airport;
import Data.Airports;
import Data.Flight;
import Data.Flights;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class WorkerEditWindowController {

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
	ComboBox flightComboBox;
	@FXML
	TextField dateTextField;
	@FXML
	TextField priceTextField;
	@FXML
	TextFlow flightTextFlow;
	@FXML
	Label infoLabel;
	@FXML
	Button editButton;
	@FXML
	Button flightButton;
	@FXML
	Label departure;
	@FXML
	Label arrival;
	@FXML
	Label date;
	@FXML
	Label price;

	@FXML
	Label title;
	@FXML
	Label pflight;

	private Client client;
	private int flightToEdit;

	public void setLanguage() {
		backButton.setText(client.getLanguage().get("Back_button"));
		editButton.setText(client.getLanguage().get("Edit_button"));
		departure.setText(client.getLanguage().get("C_departurelbl"));
		arrival.setText(client.getLanguage().get("C_arrivallbl"));
		date.setText(client.getLanguage().get("Waf_date"));
		price.setText(client.getLanguage().get("Waf_price"));
		flightButton.setText(client.getLanguage().get("Choose_button"));
		pflight.setText(client.getLanguage().get("Wef_choose"));
		title.setText(client.getLanguage().get("W_edit"));
	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}


	public void addValues() {
		Flights flights;
		flights = client.getFligts();
		for(int i= 0;i<flights.size();i++)
		{
			flightComboBox.getItems().add(flights.get(i).getFlightId());
		}


	}
	@FXML
	public void confirm() {
		flightTextFlow.getChildren().clear();
		Text t1 = new Text();
		Text t2 = new Text();
		Text t3 = new Text();
		Text t4 = new Text();
		Airports airports = client.getAirports();
		Flights flights;
		flights = client.getFligts();

		for(int i=0;i<flights.size();i++)
		{
			if((int)flightComboBox.getValue() ==  flights.get(i).getFlightId())
			{
				flightToEdit = flights.get(i).getFlightId();
				for(int j=0;j<airports.size();j++)
				{
					if(flights.get(i).getDepartureAirportId()==airports.get(j).getAirportId())
					{
						t1.setText(client.getLanguage().get("Wfedit_1")+airports.get(j).getCity());
					}
					if(flights.get(i).getArrivalAirportId()==airports.get(j).getAirportId())
					{
						t2.setText(client.getLanguage().get("Wfedit_2")+airports.get(j).getCity());
					}
				}
				t3.setText(client.getLanguage().get("Wfedit_3")+flights.get(i).getFlightDate());
				t4.setText(client.getLanguage().get("Wfedit_4")+flights.get(i).getTicketPrice());
			}

		}
		flightTextFlow.getChildren().add(t1);
		flightTextFlow.getChildren().add(t2);
		flightTextFlow.getChildren().add(t3);
		flightTextFlow.getChildren().add(t4);

		for(int i =0;i<airports.size();i++) {
			departureComboBox.getItems().add(airports.get(i).getCity());
			arrivalComboBox.getItems().add(airports.get(i).getCity());
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
	public void edit() {
		String arrival= null;
		String departure = null;
		String datePick= null;
		int price = 0;
		try{
			arrival = (String) arrivalComboBox.getValue();
			departure = (String) departureComboBox.getValue();
			datePick = (String) dateTextField.getText();
			price = Integer.parseInt(priceTextField.getText());
		}catch(Exception e)
		{
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}

		if(arrival == null || departure == null || price == 0|| datePick.length()==0)
		{
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}
		else
		{
			Airports airport = client.getAirports();
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy hh:mm");
			Date date = null;
			try {
				date = formatter.parse(datePick);
				infoLabel.setVisible(false);
				int j = 0 , depId = 0, arrId = 0;

				for (int i = 0; i < airport.size(); i++) {
					if (airport.get(i).getCity().equals(departure)) {
						depId = airport.get(i).getAirportId();
					}
					if (airport.get(i).getCity().equals(arrival)) {
						arrId = airport.get(i).getAirportId();
					}
				}
				client.getString("UPDATE LOT SET ID_LOTNISKA_WYLOTU=" + depId + ",ID_LOTNISKA_PRZYLOTU=" +arrId + " ,CENA_BILETU=" + price +
						",DATA_LOTU=TO_DATE('"+datePick+"','dd-mm-yyyy hh24:mi') WHERE ID_LOTU LIKE "+flightToEdit);

				infoLabel.setText(client.getLanguage().get("Wfedit_0"));
				infoLabel.setVisible(true);
			} catch (ParseException e) {
				infoLabel.setText(client.getLanguage().get("Wfadd_2"));
				infoLabel.setVisible(true);
			}

		}

	}
	@FXML
	public void back() {
		mainController.loadWorkerWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
	}

}

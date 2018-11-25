package Client.Controller;

import Client.Client;
import Client.Display;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Labeled;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;

public class RegisterWindowController {

	private MainScreenController mainController;
	@FXML
	Label infoLabel;
	@FXML
	TextField loginTextField;
	@FXML
	TextField firstNameTextField;
	@FXML
	TextField lastNameTextField;
	@FXML
	TextField peselTextField;
	@FXML
	TextField phoneNrTextField;
	@FXML
	TextField emailTextField;
	@FXML
	TextField countryTextField;
	@FXML
	TextField cityTextField;
	@FXML
	TextField streetTextField;
	@FXML
	TextField houseNrTextField;
	@FXML
	TextField flatNrTextField;
	@FXML
	PasswordField passField;
	@FXML
	Button registerButton;
	@FXML
	Label clockLabel;

	private Client client;

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void register() {
		String login = loginTextField.getText();
		String pass = passField.getText();
		String firstName = firstNameTextField.getText();
		String lastName = lastNameTextField.getText();
		int pesel = Integer.parseInt(peselTextField.getText());
		int phone = Integer.parseInt(phoneNrTextField.getText());
		String email = emailTextField.getText();
		String country = countryTextField.getText();
		String city = cityTextField.getText();
		String street = streetTextField.getText();
		int houseNr = Integer.parseInt(houseNrTextField.getText());
		int flatNr = Integer.parseInt(flatNrTextField.getText());
	
 		String statment = "SELECT * FROM UZYTKOWNIK where LOGIN like '" + login + "' and HASLO like '" + pass + "'";
		int temp = Integer.parseInt(client.getString(statment));
			
		if (temp != -1) {
			infoLabel.setVisible(true);
			infoLabel.setText("Rejestracja zakoñczona niepowodzeniem");
		} else if (login.length() == 0 || pass.length() == 0 || firstName.length() == 0 || lastName.length() == 0 
				|| country.length() == 0 || city.length() == 0 || street.length() == 0 ) {
			infoLabel.setVisible(true);
			infoLabel.setText("Uzupe³nij wszystkie pola");
		} else {
			int max = 0;
			statment = "SELECT MAX(ID_UZYTKOWNIKA) FROM UZYTKOWNIK";
			max = Integer.parseInt(client.getString(statment)) + 1;
			statment = "INSERT INTO uzytkownik VALUES (" + max + ",'" + login + "','" + pass + "'," + phone + ",'" + country +  "','" + city +  "','" 
			+ street +  "','" + email + "'," + pesel +  ",'" + firstName +  "','" + lastName + "',null,null,null,null)";
			client.getString(statment);
			
			infoLabel.setVisible(true);
			infoLabel.setText("Rejestracja zakoñczona sukcesem");
		}
	}

	@FXML
	public void back() {
		mainController.loadStartWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {

		this.client = client;

	}
}

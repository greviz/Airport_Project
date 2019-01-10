package Client.Controller;

import Client.Client;
import Client.Display;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Labeled;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

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
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	Label passLabel;
	@FXML
	Label firstNameLabel;
	@FXML
	Label lastNameLabel;
	@FXML
	Label phoneLabel;
	@FXML
	Label countryLabel;
	@FXML
	Label cityLabel;
	@FXML
	Label streetLabel;
	@FXML
	Label houseLabel;
	@FXML
	Label localLabel;
	@FXML
	Label regInfoLabel;
	private Client client;

	public void setLanguage() {
		passLabel.setText(client.getLanguage().get("Reg_passwd"));
		firstNameLabel.setText(client.getLanguage().get("Reg_name"));
		lastNameLabel.setText(client.getLanguage().get("Reg_surename"));
		phoneLabel.setText(client.getLanguage().get("Reg_phone"));
		countryLabel.setText(client.getLanguage().get("Reg_country"));
		cityLabel.setText(client.getLanguage().get("Reg_city"));
		streetLabel.setText(client.getLanguage().get("Reg_street"));
		houseLabel.setText(client.getLanguage().get("Reg_housenumber"));
		localLabel.setText(client.getLanguage().get("Reg_doornumber"));
		regInfoLabel.setText(client.getLanguage().get("Reg_info"));
		backButton.setText(client.getLanguage().get("Reg_backbtn"));
		registerButton.setText(client.getLanguage().get("Reg_regbtn"));
	}
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
		String pesel = peselTextField.getText();
		String phone = phoneNrTextField.getText();
		String email = emailTextField.getText();
		String country = countryTextField.getText();
		String city = cityTextField.getText();
		String street = streetTextField.getText();
		String houseNr = houseNrTextField.getText();
		String flatNr = flatNrTextField.getText();
		String statment = "SELECT * FROM UZYTKOWNIK where LOGIN like '" + login + "' and HASLO like '" + pass + "'";
		int temp = Integer.parseInt(client.getString(statment));

		if (temp != -1) {
			infoLabel.setVisible(true);
			infoLabel.setText(client.getLanguage().get("Reg_regfail"));
		} else if (login.length() == 0 || pass.length() == 0 || firstName.length() == 0 || lastName.length() == 0
				|| country.length() == 0 || city.length() == 0 || street.length() == 0 || pesel.length() == 0
				|| houseNr.length() == 0) {
			infoLabel.setVisible(true);
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
		} else {

			int clientId = 0;
			statment = "SELECT MAX(ID_KLIENTA) FROM KLIENT";
			clientId = Integer.parseInt(client.getString(statment)) + 1;

			statment = "INSERT INTO KLIENT VALUES (" + clientId + ")";
			client.getString(statment);

			int max = 0;
			statment = "SELECT MAX(ID_UZYTKOWNIKA) FROM UZYTKOWNIK";
			max = Integer.parseInt(client.getString(statment)) + 1;

			if (phone.length() == 0) {
				phone = "0";
			}

			statment = "INSERT INTO uzytkownik VALUES (" + max + ",'" + login + "','" + pass + "',"
					+ Integer.parseInt(phone) + ",'" + country + "','" + city + "','" + street + "','" + email + "',"
					+ pesel + ",'" + firstName + "','" + lastName + "'," + clientId + ",null,null,null, '" + houseNr
					+ "','" + flatNr + "')";

			client.getString(statment);



			infoLabel.setVisible(true);
			infoLabel.setText(client.getLanguage().get("Reg_succ"));
		}
	}

	@FXML
	public void back() {
		FXMLLoader loader = new FXMLLoader();
		loader.setLocation(this.getClass().getResource("/StartWindow.fxml"));
		AnchorPane pane = null;

		try {
			pane = loader.load();
		} catch (IOException e) {
			e.printStackTrace();
		}
		StartWindowController ctrl = loader.getController();
		ctrl.setMainController(mainController);
		ctrl.setClient(client);
		mainController.setScreen(pane);
		ctrl.setLanguage();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {

		this.client = client;

	}
	@FXML
	public void setstuff(){
		registerButton.setText(client.getLanguage().get("Reg_regbtn"));
	}


}

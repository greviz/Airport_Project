package Client.Controller.Technical;

import Client.Client;
import Client.Controller.MainScreenController;
import Data.Planes;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import Client.Display;

import java.time.LocalDate;

public class TechnicalCheckWindowController {
	private MainScreenController mainController;


	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	Button checkButton;
	@FXML
	ComboBox planeComboBox;
	@FXML
	Button efficientButton;
	@FXML
	Button inefficientButton;

	@FXML
	Label infoLabel;
	@FXML
	Label title;
	@FXML
	Label pplane;
	private Client client;
	private Planes plane;

	public void setLanguage() {
		backButton.setText(client.getLanguage().get("Back_button"));
		checkButton.setText(client.getLanguage().get("Tc_checkbtn"));
		efficientButton.setText(client.getLanguage().get("Tc_goodbtn"));
		inefficientButton.setText(client.getLanguage().get("Tc_badbtn"));
		title.setText(client.getLanguage().get("T_checkbtn"));
		pplane.setText(client.getLanguage().get("T_plane"));

	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}
	public void addValues() {
		plane = client.getPlanes();
		for(int i=0;i<plane.size();i++) {
			planeComboBox.getItems().add(plane.get(i).getPlaneId() + " " + plane.get(i).getName() + " " + plane.get(i).getModel() + " " + plane.get(i).getSeatsNumber());
		}
	}
	@FXML
	public void efficient() {
		String plane = null;
		try {
			plane = (String) planeComboBox.getValue();
		} catch (Exception e) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}

		if (plane == null) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		} else {

			infoLabel.setVisible(false);
			int j = 0, planeId = 0, repairId=0;
			String temp = "";
			while (true) {
				if (plane.charAt(j) == ' ') {
					break;
				}
				temp += plane.charAt(j);
				j++;
			}
			planeId = Integer.parseInt(temp);
			client.getString("UPDATE SAMOLOT SET stan_techniczny ='sprawny' WHERE ID_SAMOLOTU LIKE "+planeId);
			infoLabel.setText(client.getLanguage().get("Tcheck_0"));
			infoLabel.setVisible(true);


		}
	}

	@FXML
	public void inefficient() {
		String plane = null;
		try {
			plane = (String) planeComboBox.getValue();
		} catch (Exception e) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}

		if (plane == null) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		} else {

			infoLabel.setVisible(false);
			int j = 0, planeId = 0, repairId=0;
			String temp = "";
			while (true) {
				if (plane.charAt(j) == ' ') {
					break;
				}
				temp += plane.charAt(j);
				j++;
			}
			planeId = Integer.parseInt(temp);
			client.getString("UPDATE SAMOLOT SET stan_techniczny ='niesprawny' WHERE ID_SAMOLOTU LIKE "+planeId);
			infoLabel.setText(client.getLanguage().get("Tcheck_1"));
			infoLabel.setVisible(true);


		}
	}
	@FXML
	public void check() {
		String plane = null;
		String state = null;
		try {
			plane = (String) planeComboBox.getValue();
		} catch (Exception e) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}

		if (plane == null) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		} else {

			infoLabel.setVisible(false);
			int j = 0, planeId = 0, repairId=0;
			String temp = "";
			while (true) {
				if (plane.charAt(j) == ' ') {
					break;
				}
				temp += plane.charAt(j);
				j++;
			}
			planeId = Integer.parseInt(temp);
			state = client.getString("SELECT stan_techniczny FROM SAMOLOT WHERE ID_SAMOLOTU = "+planeId);
			infoLabel.setText(client.getLanguage().get("Tcheck_2") + state );
			infoLabel.setVisible(true);


		}

	}

	@FXML
	public void back()
	{
		mainController.loadTechnicalWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
	}
}

package Client.Controller.Technical;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Planes;
import javafx.fxml.FXML;
import javafx.scene.control.*;

import java.time.LocalDate;
import java.util.Date;

public class TechnicalEnterWindowController {
	private MainScreenController mainController;

	@FXML
	Button backButton;
	@FXML
	Label clockLabel;
	@FXML
	Button confirmButton;
	@FXML
	ComboBox planeComboBox;
	@FXML
	DatePicker datePicker;
	@FXML
	Label infoLabel;
	@FXML
	Label title;
	@FXML
	Label pplane;
	@FXML
	Label checkdate;
	private Client client;
	private Planes plane;

	public void setLanguage() {
		backButton.setText(client.getLanguage().get("Back_button"));
		confirmButton.setText(client.getLanguage().get("Confirm_button"));
		title.setText(client.getLanguage().get("T_checkup"));
		pplane.setText(client.getLanguage().get("T_plane"));
		checkdate.setText(client.getLanguage().get("Te_date"));
	}

	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	@FXML
	public void plane() {
	}

	@FXML
	public void date() {
	}

	@FXML
	public void confirm() {
		String plane = null;
		LocalDate datePick = null;
		try {
			plane = (String) planeComboBox.getValue();
			datePick = datePicker.getValue();
		} catch (Exception e) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}

		if (plane == null) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		} else {

			infoLabel.setVisible(false);
			int j = 0, planeId = 0;
			String temp = "";
			while (true) {
				if (plane.charAt(j) == ' ') {
					break;
				}
				temp += plane.charAt(j);
				j++;
			}
			planeId = Integer.parseInt(temp);
			client.getString("DELETE FROM BILET WHERE ID_LOTU IN (SELECT ID_LOTU FROM LOT WHERE ID_SAMOLOTU = "
					+planeId+" AND DATA_LOTU LIKE TO_DATE('"+ datePick +"','YYYY-MM-DD'))");
			client.getString("DELETE FROM LOT WHERE ID_SAMOLOTU LIKE " + planeId +" AND DATA_LOTU LIKE TO_DATE('"+ datePick +"','YYYY-MM-DD')");
			client.getString("UPDATE SAMOLOT SET przeglad_okresowy = '"+datePick+"' WHERE ID_SAMOLOTU LIKE " + planeId);
			infoLabel.setText(client.getLanguage().get("Tcheck_0"));
			infoLabel.setVisible(true);


		}
	}

	@FXML
	public void back() {
		mainController.loadTechnicalWindow();
	}

	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
	}

	public void addValues() {
		plane = client.getPlanes();
		for(int i=0;i<plane.size();i++) {
			planeComboBox.getItems().add(plane.get(i).getPlaneId() + " " + plane.get(i).getName() + " " + plane.get(i).getModel() + " " + plane.get(i).getSeatsNumber());
		}
	}
}

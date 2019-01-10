package Client.Controller.Technical;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Planes;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class TechnicalOrderWindowController {
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
	TextArea orderTextArea;
	@FXML
	Label infoLabel;
	@FXML
	Label title;
	@FXML
	Label pplane;
	@FXML
	Label fixdate;
	@FXML
	Label details;
	private Client client;
	private Planes plane;

	public void setLanguage() {
		backButton.setText(client.getLanguage().get("Back_button"));
		confirmButton.setText(client.getLanguage().get("Confirm_button"));
		title.setText(client.getLanguage().get("T_fix"));
		pplane.setText(client.getLanguage().get("T_plane"));
		fixdate.setText(client.getLanguage().get("Tf_fixdate"));
		details.setText(client.getLanguage().get("Tf_details"));
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
	public void plane() {
	}

	@FXML
	public void date() {
	}

	@FXML
	public void confirm() {
		LocalDate datePick = null;
		String plane = null;
		String text = null;
		String order = null;
		try {
			datePick = datePicker.getValue();
			plane = (String) planeComboBox.getValue();
			order = orderTextArea.getText();
		} catch (Exception e) {
			infoLabel.setText(client.getLanguage().get("Reg_fields"));
			infoLabel.setVisible(true);
		}

		if (plane == null || order.trim().isEmpty() || datePick == null) {
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
			repairId = Integer.parseInt(client.getString("SELECT MAX(ID_NAPRAWY) FROM NAPRAWA")) + 1;
			client.getString("DELETE FROM LOT WHERE ID_SAMOLOTU LIKE " + planeId +" AND DATA_LOTU > '"+ LocalDate.now()+ "' AND DATA_LOTU < '" + datePick + "'");
			client.getString("INSERT INTO NAPRAWA VALUES(" + repairId +",'"+LocalDate.now()+"','"+datePick+"','"+order+"',"+planeId+")");
			client.getString("UPDATE SAMOLOT SET stan_techniczny ='niesprawny' WHERE ID_SAMOLOTU LIKE "+planeId);
			infoLabel.setText(client.getLanguage().get("Tfix_0"));
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

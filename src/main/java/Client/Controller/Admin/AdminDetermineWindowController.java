package Client.Controller.Admin;

import Client.Client;
import Client.Controller.MainScreenController;
import Client.Display;
import Data.Users;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class AdminDetermineWindowController {

private MainScreenController mainController;
	
	
	@FXML
	Button backButton;
	@FXML
	Button confirmButton;
	@FXML
	Label clockLabel;
	@FXML
	Label infoLabel;
	@FXML
	ComboBox workerComboBox;
	@FXML
	TextField salaryTextField;
	private Client client;


	@FXML
	public void initialize() {
		(new Display(clockLabel)).start();
	}

	public void addValues() {

		Users u = client.getUsers();
		for (int i = 0; i < u.size(); i++) {
			if(u.get(i).getIdTechnical()!=-1 ||u.get(i).getIdWorker()!=-1) {
				workerComboBox.getItems().add(u.get(i).getId() + " " + u.get(i).getFirstName() + " " + u.get(i).getLastName());
			}
		}
	}
	@FXML
	public void workerChoice()
	{
		
	}
	@FXML
	public void confirm()
	{
		if(salaryTextField.getText().trim().isEmpty() || workerComboBox.getValue() == null)
		{
			infoLabel.setText("Uzupełnij wszystkie pola");
			infoLabel.setVisible(true);
		}
		else
		{
			infoLabel.setVisible(false);
			String user = (String) workerComboBox.getValue();
			int j = 0;
			Double salary = null;
			String temp = "";
			while (true) {
				if (user.charAt(j) == ' ') {
					break;
				}
				temp += user.charAt(j);
				j++;
			}
			try {
				salary = Double.valueOf(salaryTextField.getText());
				int userId = Integer.parseInt(temp);
				int technicalId = Integer.parseInt(client.getString("SELECT ID_PRAC_TECH FROM UZYTKOWNIK WHERE " +
						"ID_UZYTKOWNIKA = " + userId));
				if(technicalId!=-1)
				{
					client.getString("UPDATE PRACOWNIK_TECHNICZNY SET ZAROBKI =" + salary+ " WHERE ID_PRACOWNIKA = "+technicalId);
					infoLabel.setText("Ustalono zarobki");
					infoLabel.setVisible(true);
				}
				int workerId = Integer.parseInt(client.getString("SELECT ID_PRAC_ADM FROM UZYTKOWNIK WHERE " +
						"ID_UZYTKOWNIKA = " + userId));
				if(workerId!=-1)
				{
					client.getString("UPDATE PRACOWNIK_ADMINISTRACYJNY SET ZAROBKI =" + salary+ " WHERE ID_PRACOWNIKA = "+workerId);
					infoLabel.setText("Ustalono zarobki");
					infoLabel.setVisible(true);
				}
			}catch(Exception e)
			{
				infoLabel.setText("Zarobki muszą być liczbą");
				infoLabel.setVisible(true);
			}


		}
	}

	@FXML
	public void back()
	{
		mainController.loadAdminWindow();
	}
	
	public void setMainController(MainScreenController mainController) {
		this.mainController = mainController;
	}

	public void setClient(Client client) {
		this.client=client;
	}

}


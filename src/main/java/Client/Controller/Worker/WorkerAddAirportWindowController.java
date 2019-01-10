package Client.Controller.Worker;

import Client.Client;
import Client.Controller.MainScreenController;
import Client.Display;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class WorkerAddAirportWindowController {

    private MainScreenController mainController;

    @FXML
    Button backButton;
    @FXML
    Label clockLabel;
    @FXML
    TextField countryTextField;
    @FXML
    TextField cityTextField;
    @FXML
    Label infoLabel;
    @FXML
    Label city;
    @FXML
    Label country;
    @FXML
    Label title;
    @FXML
    Button addButton;
    private Client client;

    public void setLanguage() {
        backButton.setText(client.getLanguage().get("Back_button"));
        addButton.setText(client.getLanguage().get("Add_button"));
        title.setText(client.getLanguage().get("W_airport"));
        city.setText(client.getLanguage().get("Wap_city"));
        country.setText(client.getLanguage().get("Wap_country"));
    }

    @FXML
    public void initialize() {
        (new Display(clockLabel)).start();
    }



    @FXML
    public void edit() {
        String country = null;
        String city = null;
        country = countryTextField.getText();
        city = cityTextField.getText();
        if(country.length()==0 || city.length()==0)
        {
            infoLabel.setVisible(true);
            infoLabel.setText(client.getLanguage().get("Reg_fields"));
        }
        else
        {
            int airportId = 0;
            airportId = Integer.parseInt(client.getString("SELECT MAX(ID_LOTNISKA) FROM LOTNISKO")) + 1;

            client.getString("INSERT INTO LOTNISKO VALUES ("+airportId+",'"+country+"','"+city+"')");
            infoLabel.setText(client.getLanguage().get("Wap_1"));
            infoLabel.setVisible(true);
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
        this.client = client;
    }
}



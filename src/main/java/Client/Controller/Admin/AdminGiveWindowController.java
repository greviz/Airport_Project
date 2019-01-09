package Client.Controller.Admin;

import Client.Client;
import Client.Display;
import Client.Controller.MainScreenController;
import Data.Users;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class AdminGiveWindowController {

    @FXML
    Button backButton;
    @FXML
    Button clientButton;
    @FXML
    Button technicalButton;
    @FXML
    Button adminButton;
    @FXML
    Button workerButton;
    @FXML
    Label clockLabel;
    @FXML
    Label infoLabel;
    @FXML
    ComboBox workerComboBox;
    private MainScreenController mainController;
    private Client client;


    @FXML
    public void initialize() {
        (new Display(clockLabel)).start();
    }

    public void addValues() {
        Users u = client.getUsers();
        for (int i = 0; i < u.size(); i++) {
                workerComboBox.getItems().add(u.get(i).getId() + " " + u.get(i).getFirstName() + " " + u.get(i).getLastName());

        }
    }

    @FXML
    public void workerChoice() {

    }

    @FXML
    public void client() {
        if(workerComboBox.getValue()==null)
        {
            infoLabel.setText("Uzupełnij wszystkie pola");
            infoLabel.setVisible(true);
        }
        else {
            infoLabel.setVisible(false);
            String user = (String) workerComboBox.getValue();
            int j = 0;

            String temp = "";
            while (true) {
                if (user.charAt(j) == ' ') {
                    break;
                }
                temp += user.charAt(j);
                j++;
            }
            int userId = Integer.parseInt(temp);
            int clientId = Integer.parseInt(client.getString("SELECT ID_KLIENTA FROM UZYTKOWNIK WHERE ID_UZYTKOWNIKA = " + userId));
            if (clientId != -1) {
                infoLabel.setText("Ten użytkownik jest już klientem!");
                infoLabel.setVisible(true);
            } else {
                clientId = Integer.parseInt(client.getString("SELECT MAX(ID_KLIENTA) FROM KLIENT")) + 1;
                client.getString("INSERT INTO KLIENT VALUES(" + clientId + ")");
                client.getString("UPDATE UZYTKOWNIK SET ID_KLIENTA = " + clientId + ", ID_PRAC_ADM = NULL, " +
                        "ID_ADMINISTRATORA = NULL, ID_PRAC_TECH = NULL WHERE ID_UZYTKOWNIKA = " + userId);
                infoLabel.setText("Użytkownik został klientem");
                infoLabel.setVisible(true);
            }
        }
    }

    @FXML
    public void admin() {
        if(workerComboBox.getValue()==null)
        {
            infoLabel.setText("Uzupełnij wszystkie pola");
            infoLabel.setVisible(true);
        }
        else {
            infoLabel.setVisible(false);
            String user = (String) workerComboBox.getValue();
            int j = 0;

            String temp = "";
            while (true) {
                if (user.charAt(j) == ' ') {
                    break;
                }
                temp += user.charAt(j);
                j++;
            }
            int userId = Integer.parseInt(temp);
            int adminId = Integer.parseInt(client.getString("SELECT ID_ADMINISTRATORA FROM UZYTKOWNIK WHERE ID_UZYTKOWNIKA = " + userId));
            if (adminId != -1) {
                infoLabel.setText("Ten użytkownik jest już administratorem!");
                infoLabel.setVisible(true);
            } else {
                adminId = Integer.parseInt(client.getString("SELECT MAX(ID_ADMINISTRATORA) FROM ADMINISTRATOR")) + 1;
                client.getString("INSERT INTO ADMINISTRATOR VALUES(" + adminId + ")");
                client.getString("UPDATE UZYTKOWNIK SET ID_KLIENTA = NULL, ID_PRAC_ADM = NULL, ID_ADMINISTRATORA = " + adminId + "," +
                        " ID_PRAC_TECH = NULL WHERE ID_UZYTKOWNIKA = " + userId);
                infoLabel.setText("Użytkownik został administratorem");
                infoLabel.setVisible(true);
            }
        }
    }

    @FXML
    public void technical() {
        if(workerComboBox.getValue()==null)
        {
            infoLabel.setText("Uzupełnij wszystkie pola");
            infoLabel.setVisible(true);
        }
        else {
            infoLabel.setVisible(false);
            String user = (String) workerComboBox.getValue();
            int j = 0;

            String temp = "";
            while (true) {
                if (user.charAt(j) == ' ') {
                    break;
                }
                temp += user.charAt(j);
                j++;
            }
            int userId = Integer.parseInt(temp);
            int technicalId = Integer.parseInt(client.getString("SELECT ID_PRAC_TECH FROM UZYTKOWNIK WHERE ID_UZYTKOWNIKA = " + userId));
            if (technicalId != -1) {
                infoLabel.setText("Ten użytkownik jest już pracownikiem technicznym!");
                infoLabel.setVisible(true);
            } else {
                technicalId = Integer.parseInt(client.getString("SELECT MAX(ID_PRACOWNIKA) FROM PRACOWNIK_TECHNICZNY")) + 1;
                client.getString("INSERT INTO PRACOWNIK_TECHNICZNY VALUES(" + technicalId + "," + client.getU().getIdAdmin() + ",NULL)");
                client.getString("UPDATE UZYTKOWNIK SET ID_KLIENTA = NULL, ID_PRAC_ADM = NULL, ID_ADMINISTRATORA =  NULL, " +
                        "ID_PRAC_TECH = " + technicalId + " WHERE ID_UZYTKOWNIKA = " + userId);
                infoLabel.setText("Użytkownik został pracownikiem technicznym");
                infoLabel.setVisible(true);
            }
        }
    }

    @FXML
    public void worker() {
        if(workerComboBox.getValue()==null)
        {
            infoLabel.setText("Uzupełnij wszystkie pola");
            infoLabel.setVisible(true);
        }
        else {
            infoLabel.setVisible(false);
            String user = (String) workerComboBox.getValue();
            int j = 0;

            String temp = "";
            while (true) {
                if (user.charAt(j) == ' ') {
                    break;
                }
                temp += user.charAt(j);
                j++;
            }
            int userId = Integer.parseInt(temp);
            int workerId = Integer.parseInt(client.getString("SELECT ID_PRAC_ADM FROM UZYTKOWNIK WHERE ID_UZYTKOWNIKA = " + userId));
            if (workerId != -1) {
                infoLabel.setText("Ten użytkownik jest już pracownikiem administracyjnym!");
                infoLabel.setVisible(true);
            } else {
                workerId = Integer.parseInt(client.getString("SELECT MAX(ID_PRACOWNIKA) FROM PRACOWNIK_ADMINISTRACYJNY")) + 1;
                client.getString("INSERT INTO PRACOWNIK_ADMINISTRACYJNY VALUES(" + workerId + "," + client.getU().getIdAdmin() + ",NULL)");
                client.getString("UPDATE UZYTKOWNIK SET ID_KLIENTA = NULL, ID_PRAC_ADM = " + workerId + ", ID_ADMINISTRATORA =  NULL, " +
                        "ID_PRAC_TECH = NULL WHERE ID_UZYTKOWNIKA = " + userId);
                infoLabel.setText("Użytkownik został pracownikiem administracyjnym");
                infoLabel.setVisible(true);
            }
        }
    }

    @FXML
    public void back() {
        mainController.loadAdminWindow();
    }

    public void setMainController(MainScreenController mainController) {
        this.mainController = mainController;
    }

    public void setClient(Client client) {
        this.client = client;

    }

}

package Client.Controller.Worker;

import Client.Client;
import Client.Controller.MainScreenController;
import Client.Display;
import Data.Airports;
import Data.Flights;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class WorkerAddPlaneWindowController {

private MainScreenController mainController;
@FXML
Button backButton;
@FXML
Label clockLabel;
@FXML
TextField nameTextField;
@FXML
TextField modelTextField;
@FXML
TextField seatsNum;
@FXML
Button addButton;
@FXML
Label infoLabel;

private Client client;
private Flights flights;
private Airports airport;
@FXML
public void initialize() {
    (new Display(clockLabel)).start();
}




@FXML
public void add() {

        String name= null;
        String model = null;
        Integer numOfSeats= null;
        try{
                name = (String) nameTextField.getText();
                model = (String) modelTextField.getText();
                numOfSeats = Integer.parseInt(seatsNum.getText());
        }catch(Exception e)
        {
                infoLabel.setText("Uzupełnij wszystkie pola");
                infoLabel.setVisible(true);
        }
        if(name.length()==0 || model.length()==0 || numOfSeats == null)
        {
                infoLabel.setText("Uzupełnij wszystkie pola");
                infoLabel.setVisible(true);
        }
        else
        {
                int planeId = Integer.parseInt(client.getString("SELECT MAX(ID_SAMOLOTU) FROM SAMOLOT"))+1;
                client.getString("INSERT INTO SAMOLOT VALUES ("+planeId+",'"+name +"','"+model+"',"+numOfSeats+",'sprawny',null)");
                infoLabel.setText("Dodano samolot id: "+ planeId);
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

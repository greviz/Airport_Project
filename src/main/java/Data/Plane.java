package Data;

import java.io.Serializable;

public class Plane implements Serializable {
    int planeId;
    String name;
    String model;
    int seatsNumber;

    public Plane(int planeId, String name, String model, int seatsNumber) {
        this.planeId = planeId;
        this.name = name;
        this.model = model;
        this.seatsNumber = seatsNumber;
    }

    public int getPlaneId() {
        return planeId;
    }

    public void setPlaneId(int planeId) {
        this.planeId = planeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getSeatsNumber() {
        return seatsNumber;
    }

    public void setSeatsNumber(int seatsNumber) {
        this.seatsNumber = seatsNumber;
    }
}

package Data;

import java.io.Serializable;

public class Airport implements Serializable {
    private int airportId;
    private String country;
    private String city;

    public Airport(int airportId, String country, String city) {
        this.airportId = airportId;
        this.country = country;
        this.city = city;
    }

    public int getAirportId() {
        return airportId;
    }

    public void setAirportId(int airportId) {
        this.airportId = airportId;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}

package Data;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

public class Flight implements Serializable {

    private int flightId;
    private int planeId;
    private int departureAirportId;
    private int arrivalAirportId;
    private String ticketPrice;
    private String flightDate;


    public Flight(int flightId, int planeId, int departureAirportId, int arrivalAirportId, String ticketPrice, String flightDate) {
        this.flightId = flightId;
        this.planeId = planeId;
        this.departureAirportId = departureAirportId;
        this.arrivalAirportId = arrivalAirportId;
        this.ticketPrice = ticketPrice;
        this.flightDate = flightDate;
    }

    public int getFlightId() {
        return flightId;
    }

    public void setFlightId(int flightId) {
        this.flightId = flightId;
    }

    public int getPlaneId() {
        return planeId;
    }

    public void setPlaneId(int planeId) {
        this.planeId = planeId;
    }

    public int getDepartureAirportId() {
        return departureAirportId;
    }

    public void setDepartureAirportId(int departureAirportId) {
        this.departureAirportId = departureAirportId;
    }

    public int getArrivalAirportId() {
        return arrivalAirportId;
    }

    public void setArrivalAirportId(int arrivalAirportId) {
        this.arrivalAirportId = arrivalAirportId;
    }

    public String getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(String ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public String getFlightDate() {
        return flightDate;
    }

    public void setFlightDate(String flightDate) {
        this.flightDate = flightDate;
    }
}

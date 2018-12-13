package Data;

import java.io.Serializable;

public class Ticket implements Serializable {
    private int id;
    private int price;
    private int row;
    private String type;
    private int clientId;
    private int idLotu;

    public Ticket(Ticket t)
    {
        this.id=t.id;
        this.price=t.price;
        this.row=t.row;
        this.type=t.type;
        this.clientId=t.clientId;
        this.idLotu=t.idLotu;
    }
    public Ticket(int id, int price, int row, String type, int clientId, int idLotu) {
        this.id = id;
        this.price = price;
        this.row = row;
        this.type = type;
        this.clientId = clientId;
        this.idLotu = idLotu;
    }

    public Ticket(int id,int clientId) {
        this.id=id;
        this.clientId=clientId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public int getIdLotu() {
        return idLotu;
    }

    public void setIdLotu(int idLotu) {
        this.idLotu = idLotu;
    }
}

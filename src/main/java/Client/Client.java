package Client;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.sql.ResultSet;
import java.util.concurrent.Callable;

import Data.*;


public class Client {

	Socket mySocket;
	String temp;
    Selects res;
    private Users users;
	private User u;
	private Flights flight;
	private Airports airport;
	private Ticket ticket;
	private Planes plane;
	public void Connect() throws IOException {
		int port = 3614;
		mySocket = new Socket("127.0.0.1", port);
	}


	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public Flights getFlight() {
		return flight;
	}

	public void setFlight(Flights flight) {
		this.flight = flight;
	}

	public Airports getAirport() {
		return airport;
	}

	public void setAirport(Airports airport) {
		this.airport = airport;
	}
	public String getFlightInfo(int id)
	{
		getFligts();
		String temp = null;
		for(int i =0;i<flight.size();i++)
		{
			if(id == flight.get(i).getFlightId())
			{
				String dep = getAirportName(flight.get(i).getDepartureAirportId());
				String arr = getAirportName(flight.get(i).getArrivalAirportId());
				temp = "\n Wylot z: " + dep + "\n Przylot do: " +arr + "\n Data: "+flight.get(i).getFlightDate();

			}
		}
		return temp;
	}
	public String getAirportName(int id)
	{
		getAirports();
		String temp = null;
		for(int i=0;i<airport.size();i++)
		{
			if(id==airport.get(i).getAirportId())
			{
				temp =  airport.get(i).getCity();
			}
		}
		return temp;
	}
	public User getUser(User u)
	{
		sendObject(new User(u));
		while (true) {
			Object object = getObject();
			if (object instanceof User) {
				u = (User) object;
				setU(u);
				break;
			}
		}
		return u;
	}
	public Users getUsers() {
		sendObject(new Users());
		while (true) {
			Object object = getObject();
			if (object instanceof Users) {
				users = (Users) object;
				break;
			}
		}
		return users;
	}

	public String getString(String statment)
	{
		sendObject(new String(statment));

		while (true) {
			Object object = getObject();
			if (object instanceof String) {
				temp = (String) object;
				break;
			}
		}
		return temp;
	}
	public void sendObject(Object object) {
		try {
			ObjectOutputStream out = null;
			out = new ObjectOutputStream(mySocket.getOutputStream());
			mySocket.setTcpNoDelay(true);
			out.writeObject(object);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private Object getObject() {
		Object object = null;

		try {
			ObjectInputStream in = new ObjectInputStream(mySocket.getInputStream());
			object = in.readObject();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		return object;
	}


	public Flights getFligts() {
		sendObject(new Flights());
		while (true) {
			Object object = getObject();
			if (object instanceof Flights) {
				flight = (Flights) object;
				setFlight(flight);
				break;
			}
		}
		return flight;
	}

	public Airports getAirports() {
		sendObject(new Airports());
		while (true) {
			Object object = getObject();
			if (object instanceof Airports) {
				airport = (Airports) object;
				setAirport(airport);
				break;
			}
		}
		return airport;
	}

	public Ticket getTicket(Ticket t) {
		sendObject(new Ticket(t));
		while (true) {
			Object object = getObject();
			if (object instanceof Ticket) {
				ticket = (Ticket) object;
				break;
			}
		}
		return ticket;

	}

    public Selects getSelect(String sql) {
        sendObject(new Select(sql));

        while (true) {
            Object object = getObject();
            if (object instanceof Selects) {
                res = (Selects) object;
                break;
            }
        }
        return res;
    }

    public Planes getPlanes() {
		sendObject(new Planes());

		while (true) {
			Object object = getObject();
			if (object instanceof Planes) {
				plane = (Planes) object;
				break;
			}
		}
		return plane;
	}


}

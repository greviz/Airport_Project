package Server;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.sql.ResultSet;

import Data.*;

public class ServerTCPThread implements Runnable{
	Socket mySocket;

	public ServerTCPThread(Socket socket) {
		super();
		mySocket = socket;
	}

	public void run() {
		System.out.println("NEW (" + mySocket.getPort() + ") CONNECTED");

		while (true) {
			System.out.println("GET (" + mySocket.getPort() + ") WAITING");
			if (getObject(mySocket)) {
				System.out.println("GET (" + mySocket.getPort() + ") OK");
			} else {
				System.out.println("GET: (" + mySocket.getPort() + ") FALSE, CONNECTION LOST");
				break;
			}
		}
	}

	private boolean getObject(Socket mySocket) {

		ObjectInputStream in;
		Object object = null;

		try {
			in = new ObjectInputStream(mySocket.getInputStream());
			object = in.readObject();

			while (true) {
				if (object instanceof String) {

					if (sendString(mySocket, object.toString())) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}
				if (object instanceof User) {

					if (sendUser(mySocket, object)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}if (object instanceof Users) {

					if (sendUsers(mySocket)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}
				if (object instanceof Flights) {

					if (sendFlight(mySocket)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}
				if (object instanceof Airports) {

					if (sendAirport(mySocket)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}
				if (object instanceof Planes) {

					if (sendPlanes(mySocket)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}

				if (object instanceof Ticket) {

					if (sendTicket(mySocket,object)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}
				if (object instanceof Select) {

					if (sendSelect(mySocket,object)) {
						System.out.println("SEND (" + mySocket.getPort() + ") OK");
					} else {
						System.out.println("SEND (" + mySocket.getPort() + ") FALSE");
					}
					break;
				}
			}
		} catch (IOException e) {
			return false;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return true;
	}

	private boolean sendUsers(Socket mySocket) {
		try {
			Users x = JDBC.getUsers();
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	private boolean sendPlanes(Socket mySocket) {
		try {
			Planes x = JDBC.getPlanes();
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	private boolean sendSelect(Socket mySocket, Object object) {
		try {
			Selects x = JDBC.getSelect((Select)object);
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}


	private boolean sendTicket(Socket mySocket,Object obj) {
		try {
			Ticket x = JDBC.getTicket((Ticket)obj);
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	private boolean sendAirport(Socket mySocket) {
		try {
			Airports x = JDBC.getAirport();
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	private boolean sendFlight(Socket mySocket) {
		try {
				Flights x = JDBC.getFlight();
				ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
				out.writeObject(x);

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	private boolean sendUser(Socket mySocket2, Object object) {

		try {
			if(object instanceof User)
			{
			User x = JDBC.getUser((User) object);
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);
			}
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	private boolean sendString(Socket mySocket, String statment) {
		try {
			String x = JDBC.getString(statment);
			ObjectOutputStream out = new ObjectOutputStream(mySocket.getOutputStream());
			out.writeObject(x);
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
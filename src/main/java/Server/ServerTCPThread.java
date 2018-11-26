package Server;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

import Data.User;

public class ServerTCPThread extends Thread {
	Socket mySocket;

	public ServerTCPThread(Socket socket) {
		super(); // konstruktor klasy Thread
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
				}
			}
		} catch (IOException e) {
			return false;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
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
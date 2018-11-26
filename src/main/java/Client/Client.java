package Client;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.concurrent.Callable;

import Data.User;


public class Client {

	Socket mySocket;
	String temp;
	User u;
	public void Connect() throws IOException {
		int port = 3609;
		mySocket = new Socket("127.0.0.1", port);
	}

	
	public User getUser(User u)
	{
		sendObject(new User(u));

		while (true) {
			Object object = getObject();
			if (object instanceof User) {
				u = (User) object;
				break;
			}
		}
		return u;
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



}

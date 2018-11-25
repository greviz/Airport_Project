package Client;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.concurrent.Callable;


public class Client {

	Socket mySocket;
	String temp;
	public void Connect() throws IOException {
		int port = 3608;
		mySocket = new Socket("127.0.0.1", port);
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

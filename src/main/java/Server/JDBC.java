package Server;

import Data.*;

import java.sql.*;
import java.util.ArrayList;

public class JDBC {
	private static Statement st;
	private static Connection con;
	private static ResultSet res;

	public static void connectToDB() {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-E0K593V:1521:oracl", "lot", "lot");
			st = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void closeConnection() {
		System.out.print("\nZamykanie polaczenia z baz?:");
		System.out.print("Close");
		
		try {
			st.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Bl?d przy zamykaniu pol?czenia z baz?! " + e.getMessage() + ": " + e.getErrorCode());
			System.exit(4);
		}
		System.out.print(" zamkni?cie OK");
	}

	public static String getString(String statment) {
		System.out.println("Downloading data from db");
		String x = "-1";
		try {
			res = st.executeQuery(statment);
			if (res.next() != false) {
				x = res.getString(1);
			}
		} catch (Exception wyjatek) {
			System.out.println(wyjatek.getMessage());
		}
		return x;
	}

	public static User getUser(User object) {

		System.out.println("DOWNLOADING FROM DB");
		User user = null;
		String sql = "Select id_uzytkownika,login,haslo,id_klienta,id_administratora,id_prac_tech,id_prac_adm from UZYTKOWNIK WHERE LOGIN LIKE '"
				+ object.getLogin() + "' AND HASLO LIKE '" + object.getPassword() + "'";
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			if (res.next() != false) {
				Object id = res.getObject(1);
				Object login = res.getObject(2);
				Object pass = res.getObject(3);
				Object idKlienta = res.getObject(4);
				Object idAdmin = res.getObject(5);
				Object idTechnical = res.getObject(6);
				Object idWorker = res.getObject(7);

				if (id == null) {
					id = "-1";
				}
				if (idKlienta == null) {
					idKlienta = "-1";
				}
				if (idAdmin == null) {
					idAdmin = "-1";
				}
				if (idTechnical == null) {
					idTechnical = "-1";
				}
				if (idWorker == null) {
					idWorker = "-1";
				}
				user = new User(id.toString(), login.toString(), pass.toString(), idKlienta.toString(),
						idTechnical.toString(), idWorker.toString(), idAdmin.toString());

			} else {
				user = new User("-1");
			}

		} catch (SQLException e) {
			System.out.println("Bl?d odczytu z bazy! " + e.getMessage() + ": " + e.getErrorCode());
		}
		return user;
	}

	public static Flights getFlight() {
		String sql;
		sql = "SELECT * FROM LOT";
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Flights flights = new Flights();
		try {
			while (res.next()) {
				int flightId = res.getInt(1);
				int planeId = res.getInt(2);
				int departureAirportId = res.getInt(3);
				int arrivalAirportId = res.getInt(4);
				String ticketPrice = res.getString(5);
				String flightDate = res.getString(6);
				Flight f = new Flight(flightId, planeId, departureAirportId, arrivalAirportId, ticketPrice, flightDate);
				flights.add(f);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flights;
	}

	public static Airports getAirport() {
		String sql;
		sql = "SELECT * FROM LOTNISKO";
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Airports airports = new Airports();
		try {
			while (res.next()) {

				int airportId = res.getInt(1);
				String country = res.getString(2);
				String city = res.getString(3);
				Airport a = new Airport(airportId, country, city);
				airports.add(a);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return airports;
	}

	public static Ticket getTicket(Ticket obj) {
		String sql;
		sql = "SELECT * FROM Bilet WHERE ID_BILETU LIKE " + obj.getId() + " and ID_KLIENTA LIKE " + obj.getClientId();
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Ticket t = new Ticket(-1, -1);
		try {
			if (res.next() != false) {
				int id = res.getInt(1);
				int price = res.getInt(2);
				int row = res.getInt(3);
				String type = res.getString(4);
				int clientId = res.getInt(5);
				int idLotu = res.getInt(6);

				t = new Ticket(id, price, row, type, clientId, idLotu);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;

	}


	public static Selects getSelect(Select object) {
		String sql;
		sql = object.getSql();
		ResultSetMetaData rsmd;
		int columnNumber = 0;
		try {
			res = st.executeQuery(sql);
			rsmd = res.getMetaData();
			columnNumber = rsmd.getColumnCount();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Selects t = new Selects();
		try {
			while (res.next()) {
				ArrayList<Object> list = new ArrayList<Object>();
				for (int i = 1; i <= columnNumber; i++) {
					list.add(res.getObject(i));
				}
				Select s = new Select(list);
				t.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}

	public static Planes getPlanes() {
		String sql;
		sql = "SELECT * FROM SAMOLOT";
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Planes planes = new Planes();
		try {
			while (res.next()) {

				int planeId = res.getInt(1);
				String name = res.getString(2);
				String model = res.getString(3);
				int seats = res.getInt(4);
				Plane p = new Plane(planeId, name, model, seats);
				planes.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return planes;
	}

	public static Users getUsers() {
		String sql;
		sql = "SELECT ID_UZYTKOWNIKA, ID_KLIENTA, ID_PRAC_ADM, ID_ADMINISTRATORA, ID_PRAC_TECH,IMIE,NAZWISKO FROM UZYTKOWNIK";
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Users users = new Users();
		try {
			while (res.next()) {
				Object id = res.getObject(1);
				Object idKlienta = res.getObject(2);
				Object idWorker = res.getObject(3);
				Object idAdmin = res.getObject(4);
				Object idTechnical = res.getObject(5);
				String firstName = res.getString(6);
				String lastName = res.getString(7);

				if (id == null) {
					id = "-1";
				}
				if (idKlienta == null) {
					idKlienta = "-1";
				}
				if (idAdmin == null) {
					idAdmin = "-1";
				}
				if (idTechnical == null) {
					idTechnical = "-1";
				}
				if (idWorker == null) {
					idWorker = "-1";
				}

				User u = new User(Integer.parseInt(id.toString()), idKlienta.toString(), idTechnical.toString(), idWorker.toString(), idAdmin.toString(), firstName, lastName);
				users.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
}
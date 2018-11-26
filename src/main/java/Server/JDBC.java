package Server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Data.User;

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
		System.out.print("\nZamykanie polaczenia z baz¹:");
		try {
			st.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Bl¹d przy zamykaniu pol¹czenia z baz¹! " + e.getMessage() + ": " + e.getErrorCode());
			System.exit(4);
		}
		System.out.print(" zamkniêcie OK");
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

			}
			else
			{
				user = new User("-1");
			}

		} catch (SQLException e) {
			System.out.println("Bl¹d odczytu z bazy! " + e.getMessage() + ": " + e.getErrorCode());
		}
		return user;
	}

}

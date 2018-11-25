package Server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


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

}

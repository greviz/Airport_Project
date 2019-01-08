package Data;

import java.io.Serializable;

public class User implements Serializable {

	private int id;
	private String login;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	private String password;
	private String firstName;
	private String lastName;
	private int idKlienta;
	private int idTechnical;
	private int idWorker;
	private int idAdmin;

	public User() {

	}

	public User(String login, String pass) {
		this.login = login;
		this.password = pass;
	}
	public User(int id, String idKlienta, String idTechnical, String idWorker, String idAdmin, String firstName,String lastName) {
		super();
		this.id = id;
		this.idKlienta = Integer.parseInt(idKlienta);
		this.idTechnical = Integer.parseInt(idTechnical);
		this.idWorker = Integer.parseInt(idWorker);
		this.idAdmin = Integer.parseInt(idAdmin);
		this.firstName= firstName;
		this.lastName= lastName;
	}

	public User(String id, String login, String password, String idKlienta, String idTechnical, String idWorker,
			String idAdmin) {
		super();
		this.id = Integer.parseInt(id);
		this.login = login;
		this.password = password;
		this.idKlienta = Integer.parseInt(idKlienta);
		this.idTechnical = Integer.parseInt(idTechnical);
		this.idWorker = Integer.parseInt(idWorker);
		this.idAdmin = Integer.parseInt(idAdmin);
	}

	public User(User u) {
		this.id = u.getId();
		this.login = u.getLogin();
		this.password = u.getPassword();
		this.idKlienta = u.getIdKlienta();
		this.idTechnical = u.getIdTechnical();
		this.idWorker = u.getIdWorker();
		this.idAdmin = u.getIdAdmin();
	}

	public User(String id) {
		this.id=Integer.parseInt(id);
	}

	public int getIdKlienta() {
		return idKlienta;
	}

	public void setIdKlienta(int idKlienta) {
		this.idKlienta = idKlienta;
	}

	public int getIdTechnical() {
		return idTechnical;
	}

	public void setIdTechnical(int idTechnical) {
		this.idTechnical = idTechnical;
	}

	public int getIdWorker() {
		return idWorker;
	}

	public void setIdWorker(int idWorker) {
		this.idWorker = idWorker;
	}

	public int getIdAdmin() {
		return idAdmin;
	}

	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}

	public String getLogin() {
		return login;
	}

	public String getPassword() {
		return password;
	}

	public int getId() {
		return id;
	}

}
package pojo;

public class Employee {
	private int id;
	private String name;
	private String address;
	private String country;
	private String gender;

	public Employee() {

	}

	public Employee(String name, String address, String country, String gender) {

		this.name = name;
		this.address = address;
		this.country = country;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Employee [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", address=");
		builder.append(address);
		builder.append(", country=");
		builder.append(country);
		builder.append(", gender=");
		builder.append(gender);
		builder.append("]");
		return builder.toString();
	}

}

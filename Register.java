
public class Register {
private String UserId;
private String Name;
private String Mobile;
private String Email;
private String Address;
private String  City;
private String State;
private String PinCode;
public String getUserId() {
	return UserId;
}
public void setUserId(String userId) {
	UserId = userId;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getMobile() {
	return Mobile;
}
public void setMobile(String mobile) {
	Mobile = mobile;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getPinCode() {
	return PinCode;
}
public void setPinCode(String pinCode) {
	PinCode = pinCode;
}
public Register(String userId, String name, String mobile, String email, String address, String city, String state,
		String pinCode) {
	super();
	UserId = userId;
	Name = name;
	Mobile = mobile;
	Email = email;
	Address = address;
	City = city;
	State = state;
	PinCode = pinCode;
}
@Override
public String toString() {
	return "Register [UserId=" + UserId + ", Name=" + Name + ", Mobile=" + Mobile + ", Email=" + Email + ", Address="
			+ Address + ", City=" + City + ", State=" + State + ", PinCode=" + PinCode + "]";
}



}

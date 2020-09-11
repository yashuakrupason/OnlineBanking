package com.banking.Model;

public class CustomerModel {
	String account_number,username,password;
	int amount;
	public int getAmount() {
		return amount;
	}
	public void setAmount(int i) {
		this.amount = i;
	}
	int is_verified;
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getIs_verified() {
		return is_verified;
	}
	public void setIs_verified(int is_verified) {
		this.is_verified = is_verified;
	}
}

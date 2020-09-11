package com.banking.Model;

public class LoanModel {
	public String getLoan_type() {
		return loan_type;
	}

	public void setLoan_type(String loan_type) {
		this.loan_type = loan_type;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public float getLoan_amt() {
		return loan_amt;
	}

	public void setLoan_amt(float loan_amt2) {
		this.loan_amt = loan_amt2;
	}

	public float getLoan_duration() {
		return loan_duration;
	}

	public void setLoan_duration(float loan_dur) {
		this.loan_duration = loan_dur;
	}

	public int getLoan_id() {
		return loan_id;
	}

	public void setLoan_id(int loan_id) {
		this.loan_id = loan_id;
	}

	public int getIs_verified() {
		return is_verified;
	}

	public void setIs_verified(int is_verified) {
		this.is_verified = is_verified;
	}

	public float getInterest_rate() {
		return interest_rate;
	}

	public void setInterest_rate(float interest_rate) {
		this.interest_rate = interest_rate;
	}

	public float getLoan_amt_paid() {
		return loan_amt_paid;
	}

	public void setLoan_amt_paid(float loan_amt_paid) {
		this.loan_amt_paid = loan_amt_paid;
	}

	String loan_type, Username;
	float loan_amt, loan_duration;
	int is_verified, loan_id;
	float interest_rate, loan_amt_paid;

}

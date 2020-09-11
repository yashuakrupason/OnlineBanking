package com.banking.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.banking.Model.CustomerModel;
import com.banking.Model.LoanModel;
import com.banking.Model.TransactionModel;

public class DbOperation {
	Connection conn;
	int count1, count2, tcount, tbal, tacc = -1, transfer, transfer1;
	int rbal;
	String TAcc, ifsc;

	public boolean customerSignup(CustomerModel model) throws Exception {

		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement ps1 = conn
					.prepareStatement("insert into customer(username,password,is_verified,account_number) values('"
							+ model.getUsername() + "','" + model.getPassword() + "','" + model.getIs_verified() + "','"
							+ model.getAccount_number() + "')");
			count1 = ps1.executeUpdate();
			System.out.println("Inserted " + count1 + " row");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return true;

	}

	public boolean insertTxnDetails(TransactionModel model) throws Exception {
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");

			PreparedStatement st = conn
					.prepareStatement("insert into transactions(TRANS_ID,TRANS_TYPE,AMOUNT,RECEIVER_ACCOUNT,"
							+ "TRANSACTION_STATUS,username) values('" + model.getTid() + "','" + model.getTtype()
							+ "','" + model.getAmount() + "','" + model.getRAccount_no() + "','" + model.getStatus()
							+ "','" + model.getUser() + "')");
			tcount = st.executeUpdate();
			System.out.println("Inserted " + tcount + " row into txn table");
			return true;
		} catch (Exception e) {
			e.printStackTrace();

			return false;
		}

	}

	public boolean SearchAcc(String rAccNo) {
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement st = conn
					.prepareStatement("select * from bank_account where Account_Number ='" + rAccNo + "'");
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				tacc = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		if (tacc == -1) {
			return false;
		}
		return true;
	}

	public String SearchIfsc(String rAccNo) {
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement st = conn
					.prepareStatement("select * from bank_account where Account_Number ='" + rAccNo + "'");
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				ifsc = rs.getString(4);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return ifsc;
	}

	public int TransferMoney(String rAccNo, int Bal, int TAmount, String username) {
		try {

			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement st = conn
					.prepareStatement("select * from bank_account where Account_Number ='" + rAccNo + "'");
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				rbal = rs.getInt(8);
			}
			rbal = rbal + TAmount;

			PreparedStatement st1 = conn.prepareStatement(
					"update bank_account set AMOUNT=" + rbal + " where Account_Number='" + rAccNo + "'");
			transfer = st1.executeUpdate();

			PreparedStatement st5 = conn.prepareStatement("select * from customer where username ='" + username + "'");
			ResultSet rs5 = st5.executeQuery();
			while (rs5.next()) {
				TAcc = (String) rs5.getString(4);
			}

			tbal = Bal - TAmount;
			PreparedStatement st3 = conn.prepareStatement(
					"update bank_account set AMOUNT=" + tbal + " where Account_Number='" + TAcc + "'");
			transfer1 = st3.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (transfer != 1 && transfer1 != 1) {
			return -1;
		}
		return tbal;
	}

	public void FetchLoanDetails(LoanModel model) throws Exception {
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");

			PreparedStatement st = conn.prepareStatement("insert into loan(LOAN_AMT,LOAN_DURATION,TYPE_OF_LOAN,"
					+ "INTEREST_RATE,LOAN_AMT_PAID,Is_VERIFIED,Username) values('" + model.getLoan_amt() + "','"
					+ model.getLoan_duration() + "','" + model.getLoan_type() + "','" + model.getInterest_rate() + "','"
					+ model.getLoan_amt_paid() + "','" + model.getIs_verified() + "','" + model.getUsername() + "')");
			tcount = st.executeUpdate();
			System.out.println("Inserted " + tcount + " row into Loan table");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
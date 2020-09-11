package com.banking.Model;

public class TransactionModel {
	int amount;
	String tid,tdate,username,RaccNo,Ttype;
	int t_status;
	
	public String getRAccount_no() {
		return RaccNo;
		}
		
	public void setRAccount_no(String account_no) {
		this.RaccNo = account_no;
		}
		
	public String getDate() {
			return tdate;
			}
			
	public void setDate(String tdate) {
			this.tdate = tdate;
			}
	public String getTtype() {
		return Ttype;
		}
		
	public void setTtype(String Ttype) {
		this.Ttype = Ttype;
		}
	public String getTid() {
		return tid;
		}
		
	public void setTid(String tid) {
		this.tid = tid;
		}
	public int getAmount() {
		return amount;
		}
		
	public void setAmount(int amount) {
		this.amount = amount;
		
		}
	public int getStatus() {
		return t_status;
		}
		
	public void setStatus(int status) {
		this.t_status = status;
		}
	public String getUser() {
		return username;
	}
	public void setUser(String username) {
		this.username=username;
	}
}

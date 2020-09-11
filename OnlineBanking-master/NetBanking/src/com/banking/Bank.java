package com.banking;

import java.net.http.HttpResponse;

import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

public class Bank {
	public static JsonNode sendSimpleMessage() throws UnirestException {

		HttpResponse<JsonNode> request = Unirest.post("https://api.mailgun.net/v3/" + "vikas.social" + "/messages")
				.basicAuth("api", "b42e705fefbd678677915de739350d9e-203ef6d0-bf189071")
				.field("from", "Excited User <USER@vikas.social.COM>").field("to", "8466vikas@gmail.com")
				.field("subject", "hello").field("text", "testing").asJson();

		return request.getBody();
	}

	public static void main(String[] args) throws UnirestException {

		JsonNode res = sendSimpleMessage();
		System.out.println(res);

//    try {
//    	 Class.forName("com.mysql.cj.jdbc.Driver");
////       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
//       String url ="jdbc:mysql://banksystem123.mysql.database.azure.com:3306/bank?useSSL=true&requireSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; 
//       Connection myDbConn = DriverManager.getConnection(url, "Adminuser@banksystem123", "Vikas12345");
//       String query = " insert into test (Id, Name)"+"values (?, ?)";
//
//       // create the mysql insert preparedstatement
//      PreparedStatement preparedStmt = myDbConn.prepareStatement(query);
//      preparedStmt.setString (1, "12");
//      preparedStmt.setString (2, "Rubble");
//	int count1 = preparedStmt.executeUpdate();
//	System.out.println("Inserted " + count1 + " row");
//       System.out.println("Connection successful");
//    } catch (Exception e) {
//       System.err.println(e);
//    }
	}
//	class.forName("com.mysql.jdbc.Driver");
//	Connection conn = null;
//	conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root", "");
//	System.out.print("Database is connected !");
//	conn.close();

}

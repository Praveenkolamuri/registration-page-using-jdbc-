package animeworlddbconnections;
import java.sql.Connection;
import java.sql.DriverManager;


public class animeconnections {

	
	     private static String driver = "com.mysql.cj.jdbc.Driver";
	     public static String url = "jdbc:mysql://localhost:3306/animeworld";
	     private static String username = "root";
	     private static String password = "Praveen#1221";
	     private static Connection conn;
	     public static Connection getconnection() {
	    	 try {
	    		 Class.forName(driver);
	    		 conn = DriverManager.getConnection(url, username, password);
	    		 
	    	 } catch (Exception e){
	    		 e.printStackTrace();
	    	 }
	    	 return conn;
	     }
	     
	}


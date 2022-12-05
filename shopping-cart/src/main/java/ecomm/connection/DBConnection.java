package ecomm.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnection {
	private static Connection connection = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://database-2.charl9rzdvoc.ap-northeast-1.rds.amazonaws.com:3306/cloud_ecomm","admin","CLOUD1234#");
            System.out.print("connected");
        }
        return connection;
    }

}

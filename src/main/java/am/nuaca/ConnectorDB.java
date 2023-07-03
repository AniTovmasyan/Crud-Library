package am.nuaca;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectorDB {
    public Connection connectDB() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
           con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Books","root","1111");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return con;
    }
}

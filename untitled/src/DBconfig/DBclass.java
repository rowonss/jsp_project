package DBconfig;

import java.sql.*;

public class DBclass {
    public Connection DBnew  () throws SQLException, ClassNotFoundException {
        String dbURL = "jdbc:mysql://localhost:3306/jspuser";
        String dbID = "root";
        String dbPassword = "rlak1k2k3!";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(dbURL, dbID, dbPassword);
    }
}

package User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    private Connection conn;

    public UserDAO(){
        try {
            String dbURL = "jdbc:mysql://localhost:3306/jspuser";
            String dbID = "root";
            String dbPassword = "rlak1k2k3!";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
        }
        catch (Exception e){
            System.out.println("여긴가");
            e.printStackTrace();
        }
    }

    public int login(String userId, String userPassword){
        String SQL = "SELECT userPassword FROM user WHERE userId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userId);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(userPassword)){
                    System.out.println("됨");
                    return 1;

                }
                else{
                    System.out.println("안됨");
                    return 0;
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return -2;
    }

}

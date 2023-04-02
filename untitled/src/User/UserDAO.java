package User;

import DBconfig.DBclass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    private Connection conn;

    public UserDAO(){
        try {
            conn = new DBclass().DBnew();
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

    public int join(String userId, String  userPassword, String userName, String userGender, String userEmail){

        String SQL = "SELECT userId FROM user WHERE userId = ?";
        String SQL2 = "INSERT INTO user VALUES (?,?,?,?,?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                if (rs.getString("userId") != null) {
                    System.out.println("이미 존재하는 유저입니다.");
                    return -1;
                }
            }
            pstmt = conn.prepareStatement(SQL2);
            pstmt.setString(1, userId);
            pstmt.setString(2, userPassword);
            pstmt.setString(3, userName);
            pstmt.setString(4, userGender);
            pstmt.setString(5, userEmail);
            pstmt.executeUpdate();
            return 1;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return -2;
    }

}

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MiniProjectConnectMysql {

    public class MiniProjectConnectMysql {
    public static void main(string[]args){
        // VS code에서 폴더 만들기, class파일 만들기
        // MySQL  열기 -->my sql-connector J
        // connect to database 클릭
        final String USER = "root ";}
        final  String PASS = "TB2022B ";
         final String DB_URL = "jdbc:mysql://localhost/world";
         String Query = "select ID,Name,Population "+
                        "from city "+
                        "where 1 = 1 "+
                        "and Population >= 9230000 ";
    
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        try{
            Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(Query);
            while (rs.next()) {
                // Retrieve by column name
                System.out.print("ID: " + rs.getInt("id"));
                System.out.print(", NAME: " + rs.getString("name"));

                System.out.println(", Population: " + rs.getInt("population"));
        }catch(SQLException e) {
            e.printStackTrace();
        }

        //connection method, hostname,port,username,password,default schem
        // connection 
    
    }
}


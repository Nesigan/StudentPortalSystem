package votingsystem.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static votingsystem.database.VotingBin.getConnection;

/**
 *
 * @author Nesi
 */
public class attendance {
    private static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static String dbSourceUrl = "jdbc:mysql://localhost/votingdatabase";
    static private Connection courseDbConn;
    static private String userId = "test";
    static private String dbPassword = "test123!";
    
    public static Connection getConnection() throws SQLException {
	if (courseDbConn == null) {
            courseDbConn = DriverManager.getConnection(dbSourceUrl, userId,dbPassword);
	}
        return courseDbConn;
    }
    
    public int checkPresentTOC(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from toc where "+uname+"='p'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkAbsentTOC(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from toc where "+uname+"='a'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }

    public int checkPresentCN(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from cn where "+uname+"='p'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkAbsentCN(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from cn where "+uname+"='a'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkPresentPOAI(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from poai where "+uname+"='p'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkAbsentPOAI(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from poai where "+uname+"='a'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkPresentIP(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from poai where "+uname+"='p'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkAbsentIP(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from poai where "+uname+"='a'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }

    public int checkPresentDM(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from poai where "+uname+"='p'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
    
    public int checkAbsentDM(String uname)throws SQLException,ClassNotFoundException{
        Class.forName(JDBC_DRIVER);
	Connection connection;
	connection = getConnection();
        int presentCount=0;
	String queryStr1 = "select count(*) from poai where "+uname+"='a'";
        Statement queryStmt = connection.createStatement();
        ResultSet result1;
        result1 = queryStmt.executeQuery(queryStr1);
        if (result1.next()) {
            presentCount = result1.getInt(1);
	}
        return presentCount;
    }
}

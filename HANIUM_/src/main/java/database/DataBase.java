package database;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;

public class DataBase{
private static final String DRIVER = "org.mariadb.jdbc.Driver";
private static final String URL = "hanium.caquhjod0rqn.ap-northeast-2.rds.amazonaws.com:3306/SystemList";
private static final String USER = "admin";
private static final String PASSWORD = "hanium2020";

@Test
public void testConnection() throws Exception {
Class.forName(DRIVER);
try(Connection con = DriverManager.getConnection(URL, USER, PASSWORD)) {
System.out.println("����");
System.out.println(con);
}catch(Exception e) {
System.out.println("�����߻�");
e.printStackTrace();
}
}
}
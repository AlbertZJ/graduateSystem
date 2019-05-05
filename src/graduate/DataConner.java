package graduate;
import java.sql.*;
import java.util.Properties;
public class DataConner {
	private Properties prop;
    private static DataConner instance;

    public static DataConner getInstance() {
        if(instance==null) {
            synchronized(DataConner.class) {
                if(instance==null)
                    instance=new DataConner();
            }
        }
        return instance;
    }
    /*
     * DataConner类负责连接数据库
     * 构造器方法中对数据库进行了相应配置
     * 数据库我们使用MySQL
     * connect方法返回一个数据库连接
     * disconnect方法关闭一个数据库连接。
    */
    
    
    
    
    private DataConner() {
        prop=new Properties();
        prop.put("driver", "com.mysql.jdbc.Driver");
        prop.put("url", "jdbc:mysql://localhost:3306/graduate");
        prop.put("user", "root");
        prop.put("password", "123456");
        prop.put("useUnicode", "true");
        prop.put("characterEncoding", "UTF-8");
        prop.put("useSSL", "true");

        try {
            Class.forName(prop.getProperty("driver"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
 
    public Connection connect() {
        Connection conn=null;
        String url=prop.getProperty("url");
        try {
            conn=DriverManager.getConnection(url, prop);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
 
    public void disconnect(Connection conn) {
        try {
            if(conn!=null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }         	 
}

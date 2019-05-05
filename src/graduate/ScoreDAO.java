package graduate;
import graduate.Score;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ScoreDAO {
	public List readFirstTitle(){
        List<Score> list =new ArrayList<Score>();
	         Connection con=null;
	        PreparedStatement psmt=null;
         ResultSet rs=null;
         try {
             Class.forName("com.mysql.jdbc.Driver");
         } catch (ClassNotFoundException e) {
             e.printStackTrace();
        }
	        
         try {
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/graduate","root","123456");
          String sql="select * from score";
           psmt=con.prepareStatement(sql);
             rs=psmt.executeQuery();
             
             while(rs.next())
            {
            	 String usual_grade=rs.getString("usual_grade");
            	 String reply_grade=rs.getString("reply_grade");
            	 String total_grade=rs.getString("total_grade");
                String stu_id=rs.getString("stu_id");
	              String tech_id=rs.getString("tech_id");
	               
	              Score tl=new Score(usual_grade, reply_grade, total_grade, tech_id, stu_id);
            list.add(tl);
            }
	            
        } catch (SQLException e) {
           e.printStackTrace();
        }finally
         {
           try {
                 if(rs!=null)
                 {
                     rs.close();
                }
                if(psmt!=null)
                {
                    psmt.close();
                 }
                 if(con!=null)
                 {
                     con.close();
                 }
             } catch (SQLException e) {
                  e.printStackTrace();
	              }
	         }
         return list;
	      }
}

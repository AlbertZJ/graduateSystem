package graduate;
import graduate.Notice;
import java.sql.*; 
import java.util.ArrayList;
import java.util.List;

public class NoticeDAO {
	public List readFirstTitle(){
        List<Notice> list =new ArrayList<Notice>();
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
          String sql="select * from notice";
           psmt=con.prepareStatement(sql);
             rs=psmt.executeQuery();
             
             while(rs.next())
            {
            	 String id=rs.getString("note_id");
                String name=rs.getString("note");
	              String tech_id=rs.getString("tech_id");
	               
                 Notice tl=new Notice(id, name, tech_id);
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
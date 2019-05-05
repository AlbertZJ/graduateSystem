package graduate;
 
public class Title {
	/**
　　　　*下面这四个属性为数据库表中的四个属性
　　　　*/
	private String title_id; 
	private String title_name;
     private String tech_id;     
	private String title_state; 
    private String title_show;
    private String stu_id;   
     public String getTitle_id() {
		return title_id;
	}

	public void setTitle_id(String title_id) {
		this.title_id = title_id;
	}

	public String getTitle_name() {
		return title_name;
	}

	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}

	public String getTech_id() {
		return tech_id;
	}

	public void setTech_id(String tech_id) {
		this.tech_id = tech_id;
	}

	public String getTitle_state() {
		return title_state;
	}

	public void setTitle_state(String title_state) {
		this.title_state = title_state;
	}

	public String getTitle_show() {
		return title_show;
	}

	public void setTitle_show(String title_show) {
		this.title_show = title_show;
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	     
      
	public Title(String title_id, String title_name, String tech_id, String state, String show, String stu_id) {
          super();
          this.title_id = title_id;
          this.title_name = title_name;
         this.tech_id = tech_id;
         this.title_state = state;
         this.title_show = show;
         this.stu_id = stu_id;
     }
}

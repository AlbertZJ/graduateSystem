package graduate;

public class Notice {
	/**
　　　　*下面这四个属性为数据库表中的四个属性
　　　　*/
	private String note_id; 
	private String note;
     private String tech_id;     
  
	public String getNote_id() {
		return note_id;
	}
public void setNote_id(String note_id) {
		this.note_id = note_id;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getTech_id() {
		return tech_id;
	}
	public void setTech_id(String tech_id) {
		this.tech_id = tech_id;
	}
	public Notice(String note_id, String note, String tech_id) {
          super();
          this.note_id = note_id;
          this.note = note;
         this.tech_id = tech_id;
          
     }
}
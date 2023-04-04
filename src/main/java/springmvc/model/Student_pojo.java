package springmvc.model;

public class Student_pojo {

	private String sname;
	private String fname;
	private String mname;
	private String gender;
	private String dob;
	
	
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public Student_pojo(String sname, String fname, String mname, String gender, String dob) {
		super();
		this.sname = sname;
		this.fname = fname;
		this.mname = mname;
		this.gender = gender;
		this.dob = dob;
	}
	
	@Override
	public String toString() {
		return "Student_pojo [sname=" + sname + ", fname=" + fname + ", mname=" + mname + ", gender=" + gender
				+ ", dob=" + dob + "]";
	}
	
	
}

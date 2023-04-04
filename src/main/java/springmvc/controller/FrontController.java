package springmvc.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Response;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.Student_pojo;

@Controller
public class FrontController {
	
	ArrayList<Student_pojo> student =new ArrayList<Student_pojo>();
	
	@RequestMapping("/home")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(path="/registerStudent", method=RequestMethod.POST )
	public String registerStudent(@ModelAttribute Student_pojo student1) {	
		student.add(student1);
		return "home";
		
	}
	
	@RequestMapping(path="/SearchStudent", method=RequestMethod.POST )
	public String SearchStudent(@RequestParam("name") String sname,Model model) {
		ArrayList<Student_pojo> SearchStudent =new ArrayList<Student_pojo>();
		for(Student_pojo s:student) {
			if( s.getSname().equals(sname)) {
				SearchStudent.add(s);
				}
				
			}
		
		model.addAttribute("StudentList", SearchStudent);
		return "StudentRecord";
	}
	
	@RequestMapping(path="/curd", method=RequestMethod.POST )
	public String curd(HttpServletRequest request,Model model) {
		String button = request.getParameter("button");
		String sname = request.getParameter("Sname");
		for(Student_pojo s:student) {
			if( s.getSname().equals(sname)) {
				if(button.equals("delete")) {
				student.remove(s);
				}else {
					s.setSname("updated");
					s.setFname("updated");
					s.setMname("updated");
					s.setGender("updated");
					s.setDob("updated");
				}
				break;
			}
		}
		model.addAttribute("StudentList", student);
		return "StudentRecord";
		
	}
	
	@RequestMapping(path="/StudentRecord", method=RequestMethod.POST )
	public String StudentRecord(Model model) {
		model.addAttribute("StudentList", student);
		return "StudentRecord";
	}

}

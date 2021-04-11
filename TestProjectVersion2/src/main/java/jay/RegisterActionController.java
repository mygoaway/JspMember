package jay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegisterActionController{

	CafeDAO dao;
	
	@Required
	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
		System.out.println("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping("/register.do")
	public String register(@ModelAttribute Mem mem){
		System.out.println("RegisterActionController의 register()호출됨");
		dao.register(mem);
		System.out.println(mem);
		return "redirect:/homepage.html";
	}
}




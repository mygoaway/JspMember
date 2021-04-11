package jay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LookCafeActionController{

	CafeDAO dao;
	
	@Required
	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
		System.out.println("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping("/lookcafe.do")
	public String lookCafe(Model model){
		System.out.println("LookCafeActionController의 lookCafe()호출됨");
		List<Cafe> list = dao.lookcafe();
		System.out.println(list);
		model.addAttribute("list", list);
		return "lookcafe";
	}

}




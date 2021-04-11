package jay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ListActionController{

	CafeDAO dao;
	
	@Required
	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
		System.out.println("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping("/list.do")
	public String listBoard(@RequestParam String cafe_id, Model model){
		System.out.println("ListActionController의 listBoard()호출됨");
		System.out.println(cafe_id);
		Cafe cafe = dao.list(cafe_id);
		System.out.println(cafe);
		model.addAttribute("cafe", cafe);
		return "Detailed_shop";
	}

}




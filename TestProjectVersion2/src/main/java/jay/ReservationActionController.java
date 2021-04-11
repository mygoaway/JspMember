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
public class ReservationActionController{

	CafeDAO dao;
	
	@Required
	@Autowired
	public void setDao(CafeDAO dao) {
		this.dao = dao;
		System.out.println("setDao() 호출됨(dao)=>"+dao);
	}
	
	@RequestMapping("/order.do")
	public String reservate(@ModelAttribute Reservation reservation){
		System.out.println("ReservationActionController의 reservate()호출됨");
		dao.reservate(reservation);
		System.out.println(reservation);
		return "redirect:/homepage.html";
	}
}



